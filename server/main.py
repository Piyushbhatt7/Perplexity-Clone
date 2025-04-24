from fastapi import FastAPI, WebSocket
from pydantic_models.chat_body import ChatBody
from services.llm_service import LLMService
from services.sort_source_service import SortSourceService
from services.search_service import SearchService


app = FastAPI()

search_service = SearchService()
sort_source_service = SortSourceService()
llm_service = LLMService()

# chat websocket
@app.websocket("/ws/chat")
async def websocket_chat_endpoint(websocket: WebSocket):
    await websocket.accept()
    
    try:
        data = await websocket.receive_json()
        print(data)
        query = data.get("query")
        
        if not query:
            await websocket.send_text("Query not found")
            return
        body = ChatBody(query=query)
        
        search_results = search_service.web_search(body.query)
        sorted_results = sort_source_service.sort_source(body.query, search_results)
        await websocket.send_json({
            'type': 'search_result',
            'data': sorted_results
        })
    
        for chunk in llm_service.generate_response(query, sorted_results):
            await websocket.send_json({
                type: 'content',
                'data': chunk
            })
    
    except:
        print("Unexpected error occurred")
    
    finally:
        await websocket.close()

 # chat
 # / chat? query = who%20is%piyush
@app.post("/chat")
def chat_endpoint(body: ChatBody):
    # search the web and find appropriate sources
    search_results = search_service.web_search(body.query)
    sorted_results = sort_source_service.sort_source(body.query, search_results)
    
    response = llm_service.generate_response(body.query, sorted_results)
    
    
    return response 
     

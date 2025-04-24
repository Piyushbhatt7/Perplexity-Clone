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
@app.websocket("/we/chat")
async def websocket_chat_endpoint(websocket: WebSocket):
    await websocket.accept()
    
    try:
       # search the web and find appropriate sources
        search_results = search_service.web_search(body.query)
        #print(search_results)
         # sort the sources
        sorted_results = sort_source_service.sort_source(body.query, search_results)
        #print(sorted_results)
        # generate the response using LLM
    
        response = llm_service.generate_response(body.query, sorted_results)
    
    
        return response 
    
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
    #print(search_results)
    # sort the sources
    sorted_results = sort_source_service.sort_source(body.query, search_results)
    #print(sorted_results)
    # generate the response using LLM
    
    response = llm_service.generate_response(body.query, sorted_results)
    
    
    return response 
     

from fastapi import FastAPI
from pydantic_models.chat_body import ChatBody
from services.search_service import SearchService


app = FastAPI()

search_service = SearchService()

 # chat
 # / chat? query = who%20is%piyush
@app.post("/chat")
def chat_endpoint(body: ChatBody):
    # search the web and find appropriate sources
    search_results = search_service.web_search(body.query)
    print(search_results)
    # sort the sources
    # generate the response using LLM
    
    return body.query
     

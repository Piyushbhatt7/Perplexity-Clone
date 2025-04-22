from fastapi import FastAPI
from pydantic_models.chat_body import ChatBody


app = FastAPI()

 # chat
 # / chat? query = who%20is%piyush
@app.post("/chat")
def chat_endpoint(body: ChatBody):
    # search the web and find appropriate sources
    # sort the sources
    # generate the response using LLM
    
    return body.query
     

from fastapi import FastAPI
from servers.pydantic_models.chat_body import ChatBody


app = FastAPI()

 # chat
 # / chat? query = who%20is%piyush
@app.post("/chat")
def chat_endpoint(body: ChatBody):
    pass(body.query)
    return body.query
     

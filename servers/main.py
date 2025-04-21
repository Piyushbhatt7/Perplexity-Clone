from fastapi import FastAPI


app = FastAPI()

 # chat
 # / chat? query = who%20is%piyush
 @app.post("/chat")
 def chat_endpoint():
     

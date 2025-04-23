import google.generativeai as genai

class LLMService:
    
    def __init__(self):
        self.model = genai.GenerativeModel("")
    def generate_response(self, query: str, search_results: list[dict]):
        pass
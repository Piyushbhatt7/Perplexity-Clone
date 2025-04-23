import google.generativeai as genai
from config import Settings

settings = Settings()
class LLMService:
    
    def __init__(self):
        genai.configure(api_key=settings.GEMINI_API_KEY)
        self.model = genai.GenerativeModel("gemini-2.0-flash-exp-image-generation")
    def generate_response(self, query: str, search_results: list[dict]):
        pass // 1:37
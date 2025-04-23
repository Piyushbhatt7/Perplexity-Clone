import google.generativeai as genai
from config import Settings

settings = Settings()
class LLMService:
    
    def __init__(self):
        self.model = genai.GenerativeModel(settings.GEMINI_API_KEY)
    def generate_response(self, query: str, search_results: list[dict]):
        pass // 1:37
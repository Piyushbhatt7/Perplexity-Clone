from typing import List
from sentence_transformers import SentenceTransformer

class SortSourceService:
    
    def __init__(self):
        self.embedding_model = SentenceTransformer("all-miniLM-L6-v2")
    
    def sort_source(self, quey: str, search_results: List[dict]):
        
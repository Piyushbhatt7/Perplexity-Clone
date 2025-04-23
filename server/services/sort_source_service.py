from typing import List
from sentence_transformers import SentenceTransformer
import numpy as np
class SortSourceService:
    
    def __init__(self):
        self.embedding_model = SentenceTransformer("all-miniLM-L6-v2")
    
    def sort_source(self, query: str, search_results: List[dict]):
        query_embedding = self.embedding_model.encode(query)
        
        for res in search_results:
            res_embedding = self.embedding_model.encode(res['content'])
            
            similarity = np.dot()
        
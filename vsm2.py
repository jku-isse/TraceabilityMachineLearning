from __future__ import division
from collections import defaultdict
from importlib import reload

import math
import sys
import os

import nltk
import time
from nltk.corpus import stopwords

from utilities.dataloader import load_data

'''
Term Frequency = 1 + log(tf(t,d))
Inverse Document Frequency = log (N / tf(t,d) )
'''

__author__ = 'jhotdraw'
#change program depending on what we want 
program='chess'



Dict={}
if program == 'jhotdraw':
    Dict={"Paint figures and connections": 1, 
          "Create figures and connections":2, 
          "Delete figures":3, 
          "Delete connections":4, 
          "Select and deselect figures":5, 
          "Move- scale- or rotate figures":6, 
          "Change properties of figures":7, 
          "Edit text in figures":8, 
          "Align figures":9, 
          "Change z-ordering":10, 
          "Grouping and ungrouping figures":11, 
          "Launch the application":12, 
          "Open an existing drawing":13, 
          "Save a drawing":14, 
          "Scalability:  Drawings should be as large as possible":15, 
          "Performance: Quickly redraw figures if changed":16, 
          "Performance: Quickly locate figures based on x-y coordinates":17, 
          "Interoperability: Support data exchange via the clipboard":18, 
          "Usability: Support operating system specific user interfaces":19, 
          "Performance: Strive for a short startup latency":20, 
          "Recoverability: periodic auto-save":21
          }
elif program =='gantt':
        Dict={"Create Tasks": 1, 
          "Delete Tasks":2, 
          "Maintain Task Properties":3, 
          "Add/Remove Tasks as Subtasks":4, 
          "Handle Milestones":5, 
          "Create Resources (person)":6, 
          "Delete Resources (person)":7, 
          "Maintain Resource Properties":8, 
          "Add/Remove Task Links, inner":9, 
          "Add/Remove Resources to Tasks Dependencies":10, 
          "Change Task Begin/End Times manually with user changes":11, 
          "Change Task Begin/End Times automatically with dependency changes":12, 
          "Change Task Begin/End Times automatically with subtask changes":13, 
          "Prevent Circular Dependencies":14, 
          "Show Critical Path":15, 
          "Add/Remove Holidays and Vacation Days":16, 
          "Show Resource Utilization (underused or overused person)":17, 
          "General Purpose Code":18 
          }
elif program =='chess':
        Dict={"Initialization": 1, 
          "Start a new game":2, 
          "Save a game":3, 
          "Load a game":4, 
          "Switch on/off permanent brain":5, 
          "Select and move figure":6, 
          "Move figure":7, 
          "Assign player names":8
         
          }
elif program=='itrust':
      Dict={
          "Create and disbale patients": 1, 
          "Create, disable and edit personnel":2, 
          "Authenticate users":3, 
          "Enter, edit demographics":4, 
          "Log transaction":5, 
          "View, designate, undesignate HCP":6,
          "Office Visit":7,
          "View access log":8, 
          "View records":9, 
          "Enter, edit personal health records":10,
          "Document office visit":11,
          "Determine operational profile":12,
          "Declare/undeclare personal representative":13,
          "Alert Users by Email":14,
          "Maintain standards list":15,
          "Identify risk of chronic disease":16,
          "Proactively determine needed care":17,
          "Maintain hospital listing":18,
          "View prescription report":19,
          "Ophthalmology Appointment Requests":20,
          "View emergency electronic health record":21,
          "Ophthalmology Surgeries":22,
          "Comprehensive patient report":23,
          "Take satisfaction survey":24,
          "View physician satisfaction survey":25,
          "View/edit lab procedure status":26,
          "Alert users by email":27,
          "View patients":28,
          "Find LHCPs with experience with a diagnosis":29,
          "Messaging between LHCP and patient":30,
          "Find LHCPs for prescription renewal":31,
          "Proactively confirm prescription-renewal needs":32,
          "refer and provide consultations":33,
          "Maintain drug interaction":34
          }

f = open(program+'VSM/'+program+'VSM.txt', 'a')

class VectorSpaceModel:

    def __init__(self):
        reload(sys)  # had to deal with 'unicode' issues :/
        #sys.setdefaultencoding('utf8')
        self.doc_fnames = {}
        self.N = -1  # corpus size
        self.dictionary = set()  # to contain all terms (i.e, words)
        self.postings = defaultdict(dict)  # key: terms, values: posting list ; posting list = doc_id, freq
        self.documentTermFrequency = defaultdict(int)  # key: terms , values: count of docs containing the key
                                                        # 'a term appear in how many docs'
        self.termFrequency = defaultdict(dict)  # key: doc id, values: list ; list = term, freq
        self.cachedStopWords = stopwords.words('english')

    def initialize_terms_and_postings(self):
        self.N = len(self.doc_fnames)
        for id in self.doc_fnames:
            document = load_data(self.doc_fnames[id]).lower()
            terms = nltk.word_tokenize(document)
            terms = [word for word in terms if word not in self.cachedStopWords]
            unique_terms = set(terms)
            self.dictionary = self.dictionary.union(unique_terms)
            for term in unique_terms:
                self.postings[term][id] = terms.count(term)  # the value is the freq of the term in the document
                self.termFrequency[id][term] = 1.0 + math.log(terms.count(term), 2)

    def initialize_document_frequencies(self):
        for term in self.dictionary:
            self.documentTermFrequency[term] = len(self.postings[term])

    def normalize_term_frequencies(self):
        for id in self.termFrequency:
            vec = []
            for val in self.termFrequency[id].values():
                vec.append(val)
            for term in self.termFrequency[id]:
                self.termFrequency[id][term] = self.termFrequency[id][term] / self.norm_l2(vec)

    def inverse_document_frequency(self, term):
        # Return the idf of the term, if term not in dictionary then return 0.
        if term in self.dictionary:
            return math.log(self.N/self.documentTermFrequency[term], 2)
        else:
            return 0.0

    def tf_idf(self, term, id):
        if term in self.dictionary:
            if term in self.termFrequency[id]:
                return self.termFrequency[id][term] * self.inverse_document_frequency(term)
            else:
                return 0
        else:
            return 0

    def norm_l2(self, vec):
        sum = 0.
        for val in vec:
            sum += val ** 2

        return math.sqrt(sum)

    def cosine_similarity(self, query, id):
        dot_prod = 0.
        l_query = 0.
        l_doc = 0.
        cosine = 0.
        vec = []
        for term in query:
            vec.append(query.count(term))
        for term in query:
            tf_idf_q = query.count(term)/self.norm_l2(vec) * self.inverse_document_frequency(term);
            tf_idf_doc = self.tf_idf(term, id)
            prod = tf_idf_q * tf_idf_doc
            dot_prod += prod
            l_query += tf_idf_q ** 2
            l_doc += tf_idf_doc ** 2

        l_query = math.sqrt(l_query)
        l_doc = math.sqrt(l_doc)

        if not (l_query == 0 or l_doc == 0):
            cosine = dot_prod / (l_query * l_doc)

        return cosine

    def do_search(self):
        j=1
        for query in Dict:
            print(query ," ", Dict[query])
            requirementid=Dict[query]
            print(j, " ", int(len(Dict) ))

            
            scores = sorted([(id, self.cosine_similarity(query, id))
                             for id in self.doc_fnames],
                            key=lambda x: x[1],
                            reverse=True)
            # pick the top 2% results
            bound = int(len(scores) )
            print("length ",bound)
            if bound > 1:
                top_results = scores[0:bound]
                print("length ",bound)
                print ("Score: filename")
                print("length== ",len(top_results))
                i=1
                for (id, score) in top_results:
                    val=""
                    #threshold 
                    if score==1:
                        val="T"
                    else:
                        val="N"
                    s=self.doc_fnames[id].split("/")[-1]
                    s=s.replace(".txt","")
                    s=s.replace("C:\\Users\\mouna\\ownCloud\\Mouna Hammoudi\\dumps\\Python\\data\\methods"+program+"\\","")
                    f.write("\""+str(requirementid)+"-"+s+"\":\""+val+"\","+"\n")
                    if j==21:
                        print(i)
                    i+=1
            else:
                print('There are no documents to search for !\n'
                      'Please make sure you provided the correct path to self.initialize_docs(..)')
            if j==int(len(Dict) ):
                time.sleep(20)
                sys.exit()
                f.close
                print("DONE")
            j+=1
            

    def initialize_docs(self, path):
        
        self.doc_fnames = {}
        i = 0
        # Read all files in a directory
        if os.path.isdir(path):
            for root, dirs, files in os.walk(path):
                for f in files:
                    if f.endswith('.txt'):
                        self.doc_fnames[i] = os.path.abspath(os.path.join(root, f))
                        i += 1
        else:
            print (path, ' is invalid !')
            return

    def test_vsm(self):
        print ('... test_VSM() ...')
        
        self.initialize_docs(path='data/methods'+program+'/')
        self.initialize_terms_and_postings()
        self.initialize_document_frequencies()
        self.normalize_term_frequencies()
        
        while True:
            self.do_search()
        
if __name__ == '__main__':
    VectorSpaceModel().test_vsm()
    
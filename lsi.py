#Python-Script (2.7) for LSI (Latent Semantic Indexing) Document Matching (Example)
#Author: Franziska Weng
#License: Attribution 4.0 International (CC BY 4.0)
#License-URL: https://creativecommons.org/licenses/by/4.0/
#Language: English


#PACKAGES
import nltk
import re
import numpy as np
import os
import glob   
import sys

from gensim import corpora, similarities
from gensim.models import LsiModel
from nltk.corpus import stopwords
nltk.download("stopwords")
nltk.download("wordnet")

program='jhotdraw'


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
#FUNCTIONS

#function to filter out stopwords and apply word stemming
def filter_words_and_get_word_stems(document, word_tokenizer, word_stemmer,
                                    stopword_set, pattern_to_match_words=r"[^\w]",
                                    word_length_minimum_n_chars=2):
    """Remove multiple white spaces and all non word content from text and
    extract words. Then filter out stopwords and words with a length smaller
    than word_length_minimum and apply word stemmer to get wordstems. Finally
    return word stems.
    """
    document = re.sub(pattern_to_match_words, r" ", document)
    document = re.sub(r"\s+", r" ", document)
    words = word_tokenizer.tokenize(document)
    words_filtered = [word.lower()
                      for word in words
                      if word.lower() not in stopword_set and len(word) >= word_length_minimum_n_chars]
    word_stems = [word_stemmer.lemmatize(word) for word in words_filtered]
    return(word_stems)


#INPUT
#test data text data to match 
#document_test = "Recoverability: periodic auto-save"
#requirementid="21"


for document_test in Dict:
    print(document_test ," ", Dict[document_test])
    requirementid=Dict[document_test]
    #training text data to calculate TF-IDF model from
    documents_train = []
    myhashmap={}
    path = './data/methods'+program
    for filename in os.listdir(path):
        if filename.endswith(".txt") :
            subpath=path+"/"+filename
            #print(subpath)
            f=open(subpath,"r")
            f1=f.readlines()
            s=""
            for x in f1:
                s=s+x
            documents_train.append(s)
            if s in myhashmap.keys():
                myhashmap[s]=myhashmap[s]+","+filename
            else:
                myhashmap[s]=filename
    
        
    
    
    #PREPROCESS
    
    #set stopword set, word stemmer and word tokenizer
    stopword_set = set(stopwords.words("english"))
    word_tokenizer = nltk.tokenize.WordPunctTokenizer()
    word_stemmer =  nltk.WordNetLemmatizer()
    
    #apply cleaning, filtering and word stemming to training documents
    word_stem_arrays_train = [
            filter_words_and_get_word_stems(
                    str(document),
                    word_tokenizer,
                    word_stemmer,
                    stopword_set
                    ) for document in documents_train]
    print("Word Stems of Training Documents:", word_stem_arrays_train)
    
    #apply cleaning, filtering and word stemming to test document
    word_stem_array_test = filter_words_and_get_word_stems(
            document_test,
            word_tokenizer,
            word_stemmer,
            stopword_set)
    print("Word Stems of Test Document:", word_stem_array_test)
    
    
    #PROCESS
    
    #create dictionary containing unique word stems of training documents
    #TF (term frequencies) or "global weights"
    dictionary = corpora.Dictionary(
      word_stem_array_train
      for word_stem_array_train in word_stem_arrays_train)
    print("Dictionary :", dictionary)
    
    #create corpus containing word stem id from dictionary and word stem count
    #for each word in each document
    #DF (document frequencies, for all terms in each document) or "local weights"
    corpus = [
      dictionary.doc2bow(word_stem_array_train)
      for word_stem_array_train in word_stem_arrays_train]
    print("Corpus :", corpus)
    
    #create LSI model (Latent Semantic Indexing) from corpus and dictionary
    #LSI model consists of Singular Value Decomposition (SVD) of
    #Term Document Matrix M: M = T x S x D'
    #and dimensionality reductions of T, S and D ("Derivation")
    lsi_model = LsiModel(
            corpus=corpus,
            id2word=dictionary #, num_topics = 2 #(opt. setting for explicit dim. change)
            )
    print("Derivation of Term Matrix T of Training Document Word Stems: ",
          lsi_model.get_topics())
    #Derivation of Term Document Matrix of Training Document Word Stems = M' x [Derivation of T]
    print("LSI Vectors of Training Document Word Stems: ",
          [lsi_model[document_word_stems] for document_word_stems in corpus])
    
    #calculate cosine similarity matrix for all training document LSI vectors
    cosine_similarity_matrix = similarities.MatrixSimilarity(lsi_model[corpus])
    print("Cosine Similarities of LSI Vectors of Training Documents:",
          [row for row in cosine_similarity_matrix])
    
    #calculate LSI vector from word stem counts of the test document and the LSI model content
    vector_lsi_test = lsi_model[dictionary.doc2bow(word_stem_array_test)]
    print("LSI Vector Test Document:", vector_lsi_test)
    
    #perform a similarity query against the corpus
    cosine_similarities_test = cosine_similarity_matrix[vector_lsi_test]
    print("Cosine Similarities of Test Document LSI Vectors to Training Documents LSI Vectors:",
          cosine_similarities_test)
    
    
    #OUTPUT
    
    #get text of test documents most similar training document
    most_similar_document_test = documents_train[np.argmax(cosine_similarities_test)]
    print("Most similar Training Document to Test Document:", most_similar_document_test)
    
    i=0
    
    f1 = open("./"+program+"LSI/"+program+"LSI.txt", "a")
    
    '''
    for state in myhashmap: 
        arr=myhashmap[state].split(',')
        for var in arr:
            f1.write(var+"\n") 
    '''
    list =[] 
    for similarity in cosine_similarities_test:
        val=""
        #threshold
        if(similarity>0.5):
            #line="similarity: "+str(similarity)+ " , "+myhashmap[documents_train[i]]
            trace="T"
        else:
             trace="N"
        val=myhashmap[documents_train[i]]
        val=val.replace('.txt','')
        arr=val.split(',')
        for var in arr:
            line="\""+str(requirementid)+"-"+var+"\":"+"\""+trace+"\""+","
            if line not in list:
                f1.write(line+"\n")
            list.append(line)
            
            
            
            #print(documents_train[i])
            #print(myhashmap[documents_train[i]])
        i+=1
  

f1.close()
    
    
endpoint
getRegisteredObjectsFromRequestAsHtml: aRPModelname
 
      | objectString objects |
	objectString := ''.
      objects := self database loadModelObjectsOf: (self getRegisteredModel: aRPModelname).
      ^ (objects collect: [:each |
               '<br>ID: <a href="/html/', (aRPModelname), '/', (each metadata at: #id), '">',  (each metadata at: #id), '</a>']) join

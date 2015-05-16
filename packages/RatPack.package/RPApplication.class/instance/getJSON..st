actions
getJSON: aString
	"TODO: map to JSON object"
	| json |
	json := (MIMEDocument  
				contentType: 'application/json' 
				content:'{"Name":"Test","Port":"1111","Users":["me","you"],"Text":{"Header":"testheader", "Content":"blabla"},"value":30,"finished":true}').
	self
		status: 200;
		contentType: 'application/json';
		body:  json contents;
		headers: {'Location' -> aString asString copy. 'URI' -> aString asString copy}.

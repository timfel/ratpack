actions
sendJson: aJsonString 
	
	self
		status: 200;
		contentType: 'application/json';
		body:  aJsonString contents;
		headers: {'server' -> self name}.

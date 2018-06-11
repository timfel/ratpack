actions
sendJson: aJsonString 
	
	self
		status: 200;
		contentType: 'application/json';
		body:  aJsonString contents;
		headersAt: 'server' put: self name.

actions
sendJson: aJsonString with: anURIString
	
	self
		status: 200;
		contentType: 'application/json';
		body:  aJsonString contents;
		headers: {'Location' -> anURIString asString copy. 'URI' -> anURIString asString copy. 'server' -> self name}.

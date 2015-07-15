actions
sendHtml: aHtmlString with: anURIString
	
	self
		status: 200;
		contentType: 'text/html';
		body:  aHtmlString contents;
		headers: {'Location' -> anURIString asString copy. 'URI' -> anURIString asString copy. 'server' -> self name}.

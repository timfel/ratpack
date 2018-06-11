actions
sendHtml: aHtmlString
	
	self
		status: 200;
		contentType: 'text/html';
		body:  aHtmlString contents;
		headersAt: 'server' put: self name.

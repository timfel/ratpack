actions
sendHtml: aHtmlString
	
	self
		status: 200;
		contentType: 'text/html';
		body:  aHtmlString contents;
		headers: {'server' -> self name}.

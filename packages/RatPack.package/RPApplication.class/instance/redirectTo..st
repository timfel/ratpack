actions
redirectTo: aString

	self
		status: 302;
		contentType: MIMEDocument contentTypeHtml;
		body: 'Temporarily moved to: <A HREF="', aString, '">', aString, '</A>';
		headersPut: {'Location' -> aString asString copy. 'URI' -> aString asString copy} asDictionary.

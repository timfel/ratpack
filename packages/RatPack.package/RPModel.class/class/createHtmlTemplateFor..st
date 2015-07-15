object conversion
createHtmlTemplateFor: anObject

	| aHtmlString |
	aHtmlString := '<table border="1"><tr><td><b>Name:</b></td><td><b>Value:</b></td></tr>'.
	self dataTypes keys do: [:each |
			aHtmlString := aHtmlString, '<tr><td>', (each value), '</td><td>', (anObject instVarNamed: each value), '</td></tr>'].
	^ (aHtmlString, '</table>')
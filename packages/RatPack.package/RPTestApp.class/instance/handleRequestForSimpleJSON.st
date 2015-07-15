routes
handleRequestForSimpleJSON
	<get: '/simpleJSON'>	
	| tmp |
	"Change if objects are finished! Change Test too!!!!"
	tmp := '{"Name":"Test","Port":"1111","Users":["me","you"],"Text":{"Header":"testheader", "Content":"blabla"},"value":30,"finished":true}'.
	^ self sendJson: tmp with: '/simpleJSON'
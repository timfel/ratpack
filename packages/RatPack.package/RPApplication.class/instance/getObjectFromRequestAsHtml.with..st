endpoint
getObjectFromRequestAsHtml: aRPModelname with: anID

      | modelObject aHtmlString aRPModelClass |
	aHtmlString := '<html><head></head><body><h3>Object-ID: ', anID, '</h3>'.
	aRPModelClass := self getRegisteredModel: aRPModelname.
	[modelObject := self database loadModelObject: anID from: aRPModelClass] on: Warning do: [
		^ 'Object not found!'].
       ^ self sendHtml: (aHtmlString, (aRPModelClass createHtmlTemplateFor: (modelObject object)), '</body></html>') with: 'model/html'
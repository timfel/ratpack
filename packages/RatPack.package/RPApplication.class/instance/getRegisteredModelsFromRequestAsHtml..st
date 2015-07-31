endpoint
getRegisteredModelsFromRequestAsHtml: aRPModelname
 
      | aRPModelClass aHtmlString subStrings |
	aRPModelClass := self getRegisteredModel: aRPModelname.
	subStrings := OrderedCollection new.
	aHtmlString :=  '<b>Model:</b> ',
					aRPModelname,
					'<br><b>Metadata:</b> {"dataTypes":{',
					((aRPModelClass dataTypes associations collect: [:each |
						each asJsonString]) joinSeparatedBy: ','),
					'}}<br><br><b>Objects:</b>',
					(self getRegisteredObjectsFromRequestAsHtml: aRPModelname).
	^ self sendHtml: aHtmlString with: 'model/html'
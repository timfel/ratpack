model handling
getRegisteredModelsFromRequestAsHtml: aRPModelname
 
      | aRPModelClass aHtmlString subStrings |
	aRPModelClass := self getRegisteredModel: aRPModelname.
	aHtmlString :=  '<b>Model:</b> ', aRPModelname, '<br><b>Metadata:</b> {"dataTypes":['.
	subStrings := OrderedCollection new.
	aRPModelClass dataTypes associations do: [:each |
		subStrings add: ('{"', (each key), '":"', (each value), '}')].
	aHtmlString := aHtmlString,
					(subStrings joinSeparatedBy: ','),
					']}<br><br><b>Objects:</b>',
					(self getRegisteredObjectsFromRequestAsHtml: aRPModelname).
	^ self sendHtml: aHtmlString with: 'model/html'
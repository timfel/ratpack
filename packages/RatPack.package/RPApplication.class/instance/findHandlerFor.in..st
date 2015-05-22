routing
findHandlerFor: aHttpRequest in: pragmas
	
	^ ((pragmas collect: [:pragma | | rx |
					rx := (pragma argumentAt: 1) copyReplaceAll: '%' with: ' ([^/]+)'.
					pragma selector -> (RxMatcher forString: rx)])
				sort: [:a :b | a value subexpressionCount < 
								b value subexpressionCount])
				detect: [:assoc | assoc value matches: aHttpRequest url]
				ifNone: []
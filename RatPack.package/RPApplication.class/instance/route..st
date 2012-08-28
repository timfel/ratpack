routing
route: aHttpRequest
	| verb arguments match |
	verb := aHttpRequest method asLowercase asSymbol asMutator.
	match := (((Pragma allNamed: verb from: self class to: RPApplication)
				collect: [:pragma || rx |
						rx := (pragma argumentAt: 1) copyReplaceAll: '%' with: '([^/]+)'.
						pragma selector -> (RxMatcher forString: rx)])
				sortBy: [:a :b | a value subexpressionCount <
								b value subexpressionCount])
				detect: [:assoc | assoc value matches: aHttpRequest url]
				ifNone: [nil].
	match ifNil: [^ self notFound].
	arguments := match value subexpressions allButFirst.
	^ self perform: match key withArguments: arguments.
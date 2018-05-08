private
parseRequestContent: aHttpRequest

	| method |
	method := aHttpRequest method asLowercase asSymbol.
	
	[
		(method = #put) ifTrue: [ self decodeContent: aHttpRequest rawPutContents type: aHttpRequest contentType. ].
		(method = #post) ifTrue: [ self decodeContent: aHttpRequest rawPostContents type: aHttpRequest contentType. ].
	] on: Error do: [ :sig |
		self parsedRequestContents: nil.
		self class forceCorrectContentDecoding ifTrue: [ ^ sig pass ] ifFalse: [ ^ sig return ] ].
accessing
body: aStringOrStream
	| contents |
	aStringOrStream isStream ifTrue: [^ self response contents: aStringOrStream].
	contents := (aStringOrStream = self) | (aStringOrStream = nil)
					ifTrue: ['']
					ifFalse: [aStringOrStream asString].
	^ self response contents: (ReadStream on: contents).
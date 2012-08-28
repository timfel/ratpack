accessing
runningString

	^ self selectedApplication
		ifNil: ['']
		ifNotNilDo: [:app |
			app isRunning ifTrue: [self class stopString] ifFalse: [self class startString]]
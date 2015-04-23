event handling
handleShortcut: aChar
	| keyMap |
	keyMap := Dictionary new.
	self class menuKeyMap first groupsOf: 4 atATimeDo: [:key :label :help :action |
		keyMap at: key put: action].
	self selectedApplication ifNotNil: [
		self class menuKeyMap second groupsOf: 4 atATimeDo: [:key :label :help :action |
			keyMap at: key put: action]].
	self perform: (keyMap at: aChar ifAbsent: [#yourself]).
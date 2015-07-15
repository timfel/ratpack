actions
removeObject

	| aRPModelClass id labels numbers |
	labels := self selectedApplication modelClasses keys.
	(labels isEmpty)
		ifTrue: [self notify: 'No models registered!']. 
	aRPModelClass := (self createListOf: labels with: self selectedApplication modelClasses keys) 
						ifNil: [^ self cancel].
	numbers := (self selectedApplication database modelDictionary at: aRPModelClass) keys.
	(numbers isEmpty)
		ifTrue: [self notify: 'No objects available.'].

	id := (self createListOf: numbers 
			    with: (self selectedApplication database modelDictionary at: aRPModelClass) keys) 
			ifNil: [^ self cancel].
	self selectedApplication deleteFromRequest: aRPModelClass asSymbol with: id .
	self change
	
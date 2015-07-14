actions
removeObject

	| aRPModelClass id labels numbers |
	labels := self selectedApplication modelClasses keys collect: [:each | each].
	(labels size == 0)
		ifTrue: [self notify: 'Keine Models registriert!']. 
	aRPModelClass := (UIManager default
				chooseFrom: labels
				values: self selectedApplication modelClasses keys
				lines: #()
				title: 'Choose Model') ifNil: [^ self].
"Liste der Objekte"
	numbers := (self selectedApplication database modelDictionary at: aRPModelClass) keys collect: [:each| each].
	(numbers size == 0)
		ifTrue: [self notify: 'Keine Objekte vorhanden!']. 
	id := (UIManager default
				chooseFrom: numbers
				values: (self selectedApplication database modelDictionary at: aRPModelClass) keys
				lines: #()
				title: 'Choose ObjectID') ifNil: [^ self].
	self selectedApplication deleteFromRequest: aRPModelClass asSymbol with: id .
	self change
	
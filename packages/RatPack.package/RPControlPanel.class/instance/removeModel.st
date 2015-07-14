actions
removeModel

	| aRPModelClass labels |
	labels := self selectedApplication modelClasses keys collect: [:each | each].
	aRPModelClass := (UIManager default
				chooseFrom: labels
				values: self selectedApplication modelClasses keys
				lines: #()
				title: 'Choose Model') ifNil: [^ self].
	self selectedApplication removeModel: (Smalltalk classNamed: aRPModelClass).
	self change
	
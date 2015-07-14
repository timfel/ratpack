actions
removeModel

	| aRPModelClass labels |
	labels := self selectedApplication modelClasses keys.
	aRPModelClass := (self createListOf: labels with: (self selectedApplication modelClasses keys)) 
						ifNil: [^ self cancel].
	self selectedApplication removeModel: (Smalltalk classNamed: aRPModelClass).
	self change
	
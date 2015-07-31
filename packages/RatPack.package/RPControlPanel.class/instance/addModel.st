actions
addModel

	| labels model |
	labels := RPModel allSubclasses collect: [:each | each name].
	model := (self createListOf: labels with: RPModel allSubclasses) 
				ifNil: [^ self cancel].
	self selectedApplication registerModel: model.
	self change
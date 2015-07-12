object handling
loadObject: anId from: aRPModelClass

	| objects response |
	self connection startup.
	response := self connection execute: ('SELECT * FROM ', (aRPModelClass tableName), ' WHERE ID = ', anId).
	self connection	terminate.
	response := self transformResponse: response for: aRPModelClass. 
	objects := OrderedCollection new.
	response do:[:each | 
		objects add: (aRPModelClass reconstructObject: each)].
	( objects isEmpty)
		ifTrue: [self notify: 'Object not foud!'].
	^ objects first
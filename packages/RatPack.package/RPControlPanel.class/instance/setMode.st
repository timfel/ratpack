actions
setMode

	| modes |
	modes := self class executionModes.
	self selectedApplication
		mode: ((self createListOf: modes with: modes) ifNil: [^ self cancel]).
	self change
actions
setMode

	self selectedApplication
		mode: ((UIManager default
				chooseFrom: #(deployment debug)
				values: #(deployment debug)) ifNil: [^ self]).
	self change.
accessing
applicationInspect

	self selectedApplication ifNil: [^ ''].
	^ 'routes: ', self selectedApplication class routes printString, Character cr,
		'mode: ', self selectedApplication mode printString, Character cr
accessing
applicationInspect

	self selectedApplication ifNil: [^ ''].
	^ 'routes: ', self selectedApplication class routes printString, String cr,
		'mode: ', self selectedApplication mode printString, String cr
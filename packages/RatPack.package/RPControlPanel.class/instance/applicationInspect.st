accessing
applicationInspect

	| set |
	set := Set new.
	self selectedApplication ifNil: [^ ''].
	self selectedApplication routes values do: [:each | each do: [:value | set add: value key]].
	^ 'routes: ', (set asArray joinSeparatedBy: '   ') printString, String cr,
		'mode: ', self selectedApplication mode printString, String cr,
			'models: ', (self selectedApplication models keys asArray joinSeparatedBy: '   ') printString, String cr.
menu
fillApplicationMenu: aMenu from: aSpecificationList

	aSpecificationList groupsOf: 4 atATimeDo: [:key :lbl :help :action |
		lbl isSymbol
			ifFalse: [aMenu add: (key ifNil: [lbl] ifNotNil: [lbl, ' (', key asString, ')']) action: action]
			ifTrue: [aMenu addUpdating: lbl action: action].
		 aMenu balloonTextForLastItem: help].

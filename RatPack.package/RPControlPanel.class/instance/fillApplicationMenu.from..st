menu
fillApplicationMenu: aMenu from: aSpecificationList

	aSpecificationList groupsOf: 4 atATimeDo: [:key :label :help :action |
		label isSymbol
			ifFalse: [aMenu add: (key ifNil: [label] ifNotNil: [label, ' (', key, ')']) action: action]
			ifTrue: [aMenu addUpdating: label action: action].
		 aMenu balloonTextForLastItem: help].

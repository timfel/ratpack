object handling
getAllModels

	| aJsonString |
	aJsonString := '{"models":[',
		((self modelClasses asOrderedCollection collect: [:each |
      	each structureAsJson]) joinSeparatedBy: ','), ']}'.
      ^ self sendJson: aJsonString with: 'html'
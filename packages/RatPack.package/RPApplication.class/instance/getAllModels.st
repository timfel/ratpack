object handling
getAllModels

	| aJsonString |
	aJsonString := '{"models":['.
      self modelClasses asOrderedCollection withIndexDo: [:each :index |
         	(index =  1)
              	ifFalse: [aJsonString := aJsonString , ','] .
      		aJsonString := aJsonString , (each structureAsJson), '}'].
   	aJsonString := aJsonString,']}'.
      ^ self sendJson: aJsonString with: 'html'
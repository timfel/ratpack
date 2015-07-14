actions
setName

	self selectedApplication
		name: ((self createTextfieldFor: (self class appNameChooserString)
					 withInitialAnswer: (self selectedApplication name))
				ifEmpty: [^ self cancel]).
	self change
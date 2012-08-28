actions
setName

	self selectedApplication
		name: ((UIManager default
						request: self class appNameChooserString
						initialAnswer: self selectedApplication name) ifEmpty: [^ self]).
	self change.
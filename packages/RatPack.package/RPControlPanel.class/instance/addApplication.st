actions
addApplication

	| labels class port name |
	labels := RPApplication withAllSubclasses collect: [:each | each name].
	class := (self createListOf: labels with: (RPApplication withAllSubclasses)) ifNil: [^ self cancel].

	port := ((self createTextfieldFor: (self class portString)
				  withInitialAnswer: (class defaultPort asString))
				ifEmpty: [^ self cancel]) asInteger.
	name := (self createTextfieldFor: (self class appNameChooserString)
				        withInitialAnswer: (class defaultName asString))
				ifEmpty: [^ self cancel].

	class
		runIn: class defaultMode
		on: port
		named: name.
	self applicationIndex: self applicationList size.
	self change.
actions
addApplication
	| labels class |
	labels := RPApplication withAllSubclasses collect: [:each | each name].
	class := (UIManager default
				chooseFrom: labels
				values: RPApplication withAllSubclasses
				lines: #()
				title: self class appClassChooserString) ifNil: [^ self].
	class
		runIn: class defaultMode
		on: ((UIManager default
					request: self class portString
					initialAnswer: class defaultPort asString) ifEmpty: [^ self]) asInteger
		named: ((UIManager default
					request: self class appNameChooserString
					initialAnswer: class defaultName asString) ifEmpty: [^ self]).
	self applicationIndex: self applicationList size.
	self change.
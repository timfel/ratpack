accessing
attachment: aFilename

	| attachmentHeader |
	attachmentHeader := 'attachment; filename="', (FileDirectory localNameFor: aFilename), '"'.
	self response headers: {'Content-Disposition' -> attachmentHeader}.
	(FileDirectory default mimeTypesFor: aFilename) ifNotNilDo: [:mimeTypes |
		self response headers: {'Content-Type' -> mimeTypes first}].

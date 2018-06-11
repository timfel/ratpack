accessing
attachment: aFilename
	| attachmentHeader |
	attachmentHeader := 'attachment; filename="', (FileDirectory localNameFor: aFilename), '"'.
	self response headersAt: #'Content-Disposition' put: attachmentHeader.
	(FileDirectory default mimeTypesFor: aFilename) ifNotNilDo: [:mimeTypes |
		self response headersAt: #ContentType put: mimeTypes first ].

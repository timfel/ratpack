model handling
addDefaultGetRoutesFor: anRPModelClass

	self addDefaultApiGetRoutesFor: anRPModelClass.
	self addDefaultHtmlGetRoutesFor: anRPModelClass. 
routes
handleRequestForCaptureGroupsWithNumber: aNumber andWord: aWord
	<get: '/captureGroups/number/([\d]+)/word/([\w]+)'>

	self dynamicEnvironment at: #number put: aNumber asNumber.
	self dynamicEnvironment at: #word put: aWord.
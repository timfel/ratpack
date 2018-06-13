initialize-release
initializePragmaMiddleware

	| pragmas |
	pragmas := (Pragma allNamed: #middleware: from: self class to: RPApplication).
	pragmas do: [:pragma | self middleware registerMiddleware: (pragma argumentAt: 1) asOrderedCollection forHandler: pragma selector. ].
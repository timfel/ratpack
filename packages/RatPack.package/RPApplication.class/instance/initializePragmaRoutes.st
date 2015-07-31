initialize-release
initializePragmaRoutes

	RPApplication requestMethods do: [:method | | pragmas | 
		routes at: method put: (OrderedCollection new).
		pragmas := (Pragma allNamed: method from: self class to: RPApplication).
		pragmas do: [:pragma | 
						(routes at: method) add: ((pragma argumentAt: 1) -> pragma selector)]]
model handling
removeModelRouteFor: anRPModelName

	self class requestMethods do: [:method | | routes |
				routes := self routesFor: method.
				routes removeAllSuchThat: [:route | (route key includesSubString: anRPModelName)]]
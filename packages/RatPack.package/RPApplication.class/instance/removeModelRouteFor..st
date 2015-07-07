model handling
removeModelRouteFor: aRPModelClass

	self class requestMethods do: [:method | | routes |
				routes := self routesFor: method.
				routes removeAllSuchThat: [:route | (route key includesSubString: aRPModelClass tableName)]]
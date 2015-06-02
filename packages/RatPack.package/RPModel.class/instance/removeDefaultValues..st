default handling
removeDefaultValues: anArray

	anArray do: [:each | 
		self defaultValues removeKey: each asSymbol] 
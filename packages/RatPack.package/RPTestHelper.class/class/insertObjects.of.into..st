http requests
insertObjects: objects of: anRPModel into: aDatabase

	objects do: [:object | aDatabase persist: object from: anRPModel]
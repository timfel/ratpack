http requests
persist: objects on: app

	objects do: [:object | app database persist: object from: RPTestModel]  
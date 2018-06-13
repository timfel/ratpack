accessing
routes

	^ Array streamContents: [:stream |
		#(get: #put: #post: #delete: #patch: #head: #options: #trace: #connect:) do: [:verb |
			stream nextPutAll: (Pragma allNamed: verb from: self to: RPApplication)]]
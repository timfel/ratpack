private
updatePragmas

	 #(#get: #put: #post: #delete: #patch: #head: #options: #trace: #connect:) do: [:method | 
		routes at: method put: (Pragma allNamed: method from: self class to: RPApplication)]
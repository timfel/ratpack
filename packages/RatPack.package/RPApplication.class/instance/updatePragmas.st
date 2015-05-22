private
updatePragmas

	 #(#get: #put: #post: #delete: #patch: #head: #options: #trace: #connect:) do: [:method | 
		self pragmas at: method put: (Pragma allNamed: method from: self class to: RPApplication)]
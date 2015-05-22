private
initializePragmas

	pragmas := Dictionary new.
	#(#get: #put: #post: #delete: #patch: #head: #options: #trace: #connect:) do: [:method | 
		pragmas at: method put: (Pragma allNamed: method from: self class to: RPApplication)] 
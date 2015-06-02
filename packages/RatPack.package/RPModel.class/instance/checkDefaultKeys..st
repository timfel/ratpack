default handling
checkDefaultKeys: aCollection

	aCollection do: [:each | 
		self attributes indexOf: each ifAbsent:   [(self notify: 'Attribut named ', (each asString), ' not found!'). ^false]].
	^true 
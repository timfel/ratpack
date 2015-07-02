model handling
removeModel: aModelname
	
	self models removeKey: aModelname asSymbol.
	self database removeModel: aModelname 
	
model handling
removeModel: aModelname
	
	self models removeKey: aModelname asSymbol.
	self database removeModel: aModelname.
	self removeModelRouteFor: aModelname 
	
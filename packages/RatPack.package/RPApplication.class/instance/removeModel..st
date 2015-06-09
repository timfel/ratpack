model handling
removeModel: aModelname
	
	self models removeKey: aModelname.
	self database removeModel: aModelname 
	
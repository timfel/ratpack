initialize
initializeFrom: aJSON

	super initialize.
	self privateId: (self class getUniqueID)
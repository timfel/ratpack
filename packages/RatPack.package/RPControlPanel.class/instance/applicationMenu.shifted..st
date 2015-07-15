menu
applicationMenu: aMenu shifted: shift

	aMenu setTarget: self.
	self fillApplicationMenu: aMenu from: self class menuKeyMap first.
	self selectedApplication ifNotNil: [
		aMenu addLine.
		self fillApplicationMenu: aMenu from: self class menuKeyMap second].
	^ aMenu
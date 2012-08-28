initialization
buildApplicationList

	self
		addMorph: (PluggableListMorph new
						on: self
						list: #applicationList
						selected: #applicationIndex
						changeSelected: #applicationIndex:
						menu: #applicationMenu:shifted:
						keystroke: #handleShortcut:;
						width: self width;
						height: self height / 2;
						topLeft: self topLeft)
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@0.49)).
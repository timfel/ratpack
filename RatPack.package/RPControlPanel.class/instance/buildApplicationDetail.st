initialization
buildApplicationDetail

	self
		addMorph: (PluggableTextMorph new
						on: self 
						text: #applicationInspect
						accept: nil
						readSelection: nil
						menu: nil;
						width: self width;
						height: self height / 2;
						topLeft: self height / 2 + self topLeft)
		fullFrame: (LayoutFrame fractions: (0@0.5 corner: 1@1)).

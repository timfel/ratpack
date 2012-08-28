doits
squeakRegisterInWorldMenu

	Smalltalk globals
		at: #TheWorldMenu
		ifPresent: [:class |
			class
				registerOpenCommand:
					{'RatPack Control Panel'.
					{(Smalltalk at: #RPControlPanel).
					#open}.
					'The RatPack Control Panel allows managing RatPack applications'} ]
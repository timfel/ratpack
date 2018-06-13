world menu
menuCommandOn: aBuilder  
	<worldMenu>
	(aBuilder item: 'RatPack Control Panel')
		parent: #Tools;
		order: 0.5;
		action: [self open]
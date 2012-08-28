initialization
initialize

	super initialize.
	self
		setLabel: self class windowTitle;
		applicationIndex: 0;
		layoutPolicy: ProportionalLayout new;
		buildApplicationList;
		buildApplicationDetail.
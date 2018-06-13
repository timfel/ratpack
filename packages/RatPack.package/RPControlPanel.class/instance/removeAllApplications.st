actions
removeAllApplications

	self applicationList do: [ :each  |
		RPApplication removeService: each stop;
										      yourself.
		self change.]
accessing
database

	^ database ifNil: [database := RPImageDatabase new.]
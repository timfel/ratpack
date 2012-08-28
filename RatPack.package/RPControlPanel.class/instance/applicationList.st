accessing
applicationList

	^ RPApplication services asArray sortBy: [:a :b | a name < b name]
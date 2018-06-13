accessing
applicationList

	^ RPApplication services asArray sort: [:a :b | a name < b name]
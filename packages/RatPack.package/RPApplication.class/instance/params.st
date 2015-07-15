accessing
params
	"Replaces param keys that have only one value with the value,
	so we don't have to deal with arrays all over the place"
	self request ifNil: [^ Dictionary new].
	^ self cacheAt: #params ifAbsentPut: [
		Dictionary newFrom: (Array streamContents: [:stream |
			self request fields keysAndValuesDo: [:key :value || param |
				param := value size = 1 ifTrue: [value first] ifFalse: [value].
				stream nextPut: key -> param]])]
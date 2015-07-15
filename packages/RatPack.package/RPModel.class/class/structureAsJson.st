meta datas
structureAsJson
	"returns datatypes and modelname as JsonString"

	| aJsonString subString |
	subString := ''.
	aJsonString := '{"', (self name), '":{"dataTypes":['.
	self dataTypes associations withIndexDo: [:each :index |
		(index = 1) ifFalse: [subString := subString , ','].
		subString := subString, '{"', (each key), '":"', (each value), '"'.
		subString := subString, '}'.].
	aJsonString := aJsonString, subString.
	aJsonString := aJsonString, ']}'.
	^ aJsonString
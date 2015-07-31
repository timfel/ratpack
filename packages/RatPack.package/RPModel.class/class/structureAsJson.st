meta datas
structureAsJson
	"returns datatypes and modelname as JsonString"

	^ '{"', (self name), '":{"dataTypes":{',
		((self dataTypes associations collect: [:each |
		each asJsonString]) joinSeparatedBy: ','), '}}}'
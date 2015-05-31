models handling
registerModel: aRPModel
	"TODO: Return error page if model is already redistered"
	self modelDictionary at: (aRPModel modelName asSymbol) 
						ifAbsent: [ self modelDictionary at: (aRPModel modelName asSymbol) put: ( IdentityDictionary new ). ^self].
	self notify:  'Model already exists! ' , aRPModel modelName
	
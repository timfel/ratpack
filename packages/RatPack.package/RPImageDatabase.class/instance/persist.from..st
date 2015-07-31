object handling
persist: anObject from: anRPModelClass

	| newId |
	newId := self getNextIdForModel:  anRPModelClass.
	self writeObject: anObject from: anRPModelClass  withId: newId
metadata handling
metaDataVariables

	| collection |
"	^ self idColumnName asArray asOrderedCollection "
	collection := OrderedCollection  new.
	collection add: #id.
	^ collection 
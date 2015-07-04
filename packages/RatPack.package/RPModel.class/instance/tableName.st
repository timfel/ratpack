accessing
tableName

	^ tableName ifNil: [ tableName := self modelName]
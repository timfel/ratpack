accesing
dataTypes
	"Create a dictionary on class side with variablename->#( datatype . defaultValue) . 
	Datatypes:
		VARCHAR(size)
		INT

	Example:
	^ Dictionary newFrom: { 'var1'->#( 'VARCHAR(30)'   default) .
							'var2'->#( 'INT PRIMARY KEY' ) }
	"
	self subclassResponsibility
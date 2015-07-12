accesing
defaultValues
	"Create a dictionary on class side with variablename->#( datatype) . 
	Example:
	^ Dictionary newFrom: { 'var1'->#( 'VARCHAR(30)'  ) .
							'var2'->#( 'INT PRIMARY KEY' ) }
	"
	self subclassResponsibility
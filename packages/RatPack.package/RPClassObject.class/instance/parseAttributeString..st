initialize
parseAttributeString: aString
	
	| name counter namesearch startPos | 
	counter := 0.
	namesearch := true.
	name:= ''.
	aString doWithIndex: [ :each :index  | 
			"Open new header."
			(each asSymbol  = #< )ifTrue:[
				(counter = 1)ifTrue:[
					startPos := index].
				counter:= counter +1.
				(namesearch & (counter > 1))ifTrue:[
						self header: name.
						namesearch := false.
						(self header size < 1)ifTrue:[
							self broken: true]]].
			"Close current header."
			(each asSymbol  = #> )ifTrue:[
				counter:= counter -1.
				
				(counter = 1)ifTrue:[
						self children addLast: (RPClassObject newFromString: (aString copyFrom: startPos to: index)). ]].
			"Get header name."		
			((each asSymbol  = #<) | (each asSymbol  = #>) | (namesearch = false))ifFalse:[
				name := name , (each asString)]].
	(counter = 0)ifFalse:[
		self broken: true].
	^name
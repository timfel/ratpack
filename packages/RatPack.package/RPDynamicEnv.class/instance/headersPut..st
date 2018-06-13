accessing
headersPut: aDictionary
 			
	aDictionary
		associationsDo: [ :association | self headersAt: association key put: association value. ].
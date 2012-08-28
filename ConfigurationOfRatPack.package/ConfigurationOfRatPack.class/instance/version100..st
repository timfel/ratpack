versions
version100: spec 
	<version: '1.0.0'>
	spec
		for: #common
		do: [spec blessing: #development.
			spec description: ''.
			spec author: 'tfel'.
			spec timestamp: '2/1/2012 09:21'.
			spec
				baseline: 'RatPack'
				with: [spec repository: 'github://timfel/ratpack:master'];
				import: 'RatPack'].
	spec
		for: #squeak
		do: [spec package: 'VB-Regex' with: 'VB-Regex-damienpollet.17']
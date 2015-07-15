object handling
getAllModelsFromRequestAsHtml
	
	 ^ self sendHtml: ('<!DOCTYPE html><html><head></head><body><h3>Models:</h3>', 
			((self modelClasses asOrderedCollection collect: [:each | '<a href="/html/', (each name), '">', (each name), '</a><br>']) join),
			'</body></html>') asString with: 'html'
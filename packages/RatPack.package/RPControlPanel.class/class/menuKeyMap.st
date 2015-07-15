menu key map
menuKeyMap
	"Menu with always shown items in the first array, items that apply to a selected service 
	in the second. Items take the form {key . label . help . action}.
	If the label is a symbol, a label selector is assumed and an updating menu item is used.
	If key is nil, there will be no keybinding.
	For string labels, the keybinding is added in parens."
	^ #(
		#(
			$a 'Add' 'Add an application' addApplication
		)
		#(
			$s runningString 'Start/stop the application' toggleRunning
			$e 'Explore' 'Explore the application' exploreObject
			$m 'Set mode' 'Set the application mode' setMode
			$p 'Set port' 'Set the application port' setPort
			$n 'Set name' 'Set the application name' setName
			$x 'Remove' 'Remove the application' removeApplication 
			$r 'Remove all' 'Remove all applications' removeAllApplications
			$n 'Add Model' 'Add a Model to the Application' addModel
			$d 'Remove Model' 'Removes the given Model from the Application' removeModel
			$l 'Toggle Logging' 'En- or Disable the LoggingWindow' toggleLogging 
			$o 'Add Object' 'Add an Object to the Application' addObject
			$i 'Remove Object' 'Removes the Object with the given ID from the Application' removeObject
		)
	)
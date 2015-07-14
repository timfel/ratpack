helpers
createListOf: labels with: values

	^ UIManager default
				chooseFrom: labels
				values: values
				lines: #()
				title: 'Choose'
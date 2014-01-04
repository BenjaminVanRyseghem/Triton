initialize
initialize

	super initialize.

	box whenChangedDo: [ :b | 
		openLabel text: ('[ ', b argument).
		textField text: self retrieveBlockText.
		title text: self retrieveTitleText.
		defaultTitle text: b defaultTitle ]
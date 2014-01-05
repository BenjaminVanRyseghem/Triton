initialization
initializeWidgets

	ok := self newButton.
	cancel := self newButton.
	
	block:= self newLabel.
	openLabel := self newLabel.
	textField := self newTextInput.
	closeLabel := self newLabel.
	
	titleLabel := self newLabel.
	title := self newTextInput.
	
	defaultTitleLabel := self newLabel.
	defaultTitle := self newTextInput.
	
	ok
		icon: Smalltalk ui icons smallOkIcon;
		action: [ self validate ].
		
	cancel
		icon: Smalltalk ui icons smallCancelIcon;
		action: [ self box showView ].
		
	block text: 'Block: '.	
	closeLabel text: ' ]'.
	textField 
		autoAccept: true;
		entryCompletion: nil.
		
	titleLabel text: 'Title: '.
	title 
		autoAccept: true;
		entryCompletion: nil.
		
	defaultTitleLabel text: 'Default title: '.
	defaultTitle 
		autoAccept: true;
		entryCompletion: nil.
		
	self focusOrder
		add: defaultTitle;
		add: title;
		add: textField;
		add: ok;
		add: cancel
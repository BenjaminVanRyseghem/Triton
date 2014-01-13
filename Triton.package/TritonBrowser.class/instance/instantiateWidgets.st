initialization
instantiateWidgets
	packageButton := self newButton.
	classButton := self newButton.
	protocolButton := self newButton.
	methodButton := self newButton.
	text := self newText.
	timelineWidget := self instantiate: RoassalModel
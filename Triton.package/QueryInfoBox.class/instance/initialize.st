initialize
initialize

	super initialize.

	self computationBlock: [ :method | self sortDataFor: method ]
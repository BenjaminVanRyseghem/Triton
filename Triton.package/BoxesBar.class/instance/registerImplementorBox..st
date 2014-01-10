registring
registerImplementorBox: aBox

	aBox
		when: #changed
		send: #implementorChanged:
		to: self
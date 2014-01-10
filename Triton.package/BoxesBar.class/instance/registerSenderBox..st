registring
registerSenderBox: aBox

	aBox
		when: #changed
		send: #senderChanged:
		to: self
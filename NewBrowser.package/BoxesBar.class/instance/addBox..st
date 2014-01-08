protocol
addBox: aBox

	boxes add: aBox.
	aBox owner: self.
	aBox registerToOwner: self.
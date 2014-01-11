protocol
doWithIndex: index andPropagate: aBlock

	aBlock value: self value: index.
	destinationLink propagate: aBlock index: index +1
initialize
from: sourceNode to: destinationNode

	source := sourceNode.
	destination := destinationNode.

	source destinationLink: self.
	destination sourceLink: self.
	
	^ self
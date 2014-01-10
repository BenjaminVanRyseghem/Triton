*Triton
positionInWorld
	| position positionInWorld |

	position := from position + to position // 2.
	positionInWorld := position + ((view canvas extent x // 2)@(view canvas extent y // 2)).
	positionInWorld := positionInWorld + view canvas topLeft - view canvas camera position.
	
	^ positionInWorld
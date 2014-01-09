*NewBrowser
positionInWorld
	| positionInWorld |

	positionInWorld := self position + ((view canvas extent x // 2)@(view canvas extent y // 2)).
	positionInWorld := positionInWorld + view canvas topLeft - view canvas camera position.
	
	^ positionInWorld
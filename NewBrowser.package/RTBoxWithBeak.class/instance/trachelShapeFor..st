hooks
trachelShapeFor: anElement
	| shape rec ex |
	ex := (self widthFor: anElement) @ (self heightFor: anElement).
	rec := (anElement position - (ex / 2)) extent: ex.

	shape := TRBoxWithBeakShape new.
	shape fromRectangle: rec color: (self colorFor: anElement).
	shape strokePaint: (self borderColorFor: anElement).
	^ shape
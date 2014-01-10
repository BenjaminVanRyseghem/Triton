private
updateView

	self needRebuild: false.
	self buildWithSpecLayout: self class defaultSpec.
	self focusOrder
		removeAll;
		add: state value
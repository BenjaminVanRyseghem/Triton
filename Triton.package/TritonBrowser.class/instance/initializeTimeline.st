initialization
initializeTimeline
	| rtTimeline |
	rtTimeline := RTTimeline new
		timeline: timeline;
		yourself.
	timelineWidget script: [ :view :canvas | rtTimeline drawTimelineOn: view canvas: canvas ]
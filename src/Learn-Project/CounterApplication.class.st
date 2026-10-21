Class {
	#name : 'CounterApplication',
	#superclass : 'SpApplication',
	#category : 'Learn-Project-Counter-GUI',
	#package : 'Learn-Project',
	#tag : 'Counter-GUI'
}

{ #category : 'initialization' }
CounterApplication >> initialize [

	self addStyleSheetFromString:
		'.application [  .counter [ Draw { #color: #blue },
		Font {  #size: 20, #bold: true }
		 ] ]'
]

{ #category : 'running' }
CounterApplication >> start [

	(CounterPresenter on: (Counter new: 5))
		application: self;
		open
]

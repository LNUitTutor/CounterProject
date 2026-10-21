"
Емкіз GUI для екземпляра Counter
"
Class {
	#name : 'LCounterPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'label',
		'buttons'
	],
	#category : 'Learn-Project-Counter-SPWindow',
	#package : 'Learn-Project',
	#tag : 'Counter-SPWindow'
}

{ #category : 'initialization' }
LCounterPresenter >> connectPresenters [

	buttons incrButton action: [
		label label: (label label asInteger + 1) printString ].
	buttons decrButton action: [
		label label: (label label asInteger - 1) printString ]
]

{ #category : 'layout' }
LCounterPresenter >> defaultLayout [

	^ SpBoxLayout newLeftToRight
		  add: label;
		  add: buttons
]

{ #category : 'initialization' }
LCounterPresenter >> initializePresenters [

	label := self newLabel.
	buttons := self instantiate: ButtonsPresenter.
	label label: '0'
]

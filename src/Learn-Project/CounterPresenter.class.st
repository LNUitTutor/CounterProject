"
Простий застосунок, який надає візуальний інтерфейс для взаємодії з лічильником.
Демонструє використання стандартних демонстраторів, макетів, різних способів вирівнювання, налаштування вікна, стилізації окремих елементів GUI, взаємодії з моделлю даних
"
Class {
	#name : 'CounterPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'valueLabel',
		'incrementButton',
		'decrementButton',
		'sourceObj'
	],
	#category : 'Learn-Project-Counter-GUI',
	#package : 'Learn-Project',
	#tag : 'Counter-GUI'
}

{ #category : 'initialization' }
CounterPresenter >> connectPresenters [

	incrementButton action: [ "valueLabel label: (valueLabel label asInteger + 1) printString"
		sourceObj increment.
		valueLabel label: self valueString ].
	decrementButton action: [ "valueLabel label: (valueLabel label asInteger - 1) printString"
		sourceObj decrement.
		valueLabel label: self valueString ]
]

{ #category : 'layout' }
CounterPresenter >> defaultLayout [

	^ SpBoxLayout newLeftToRight
		  add: (SpBoxLayout newTopToBottom
				   vAlignCenter;
				   hAlignCenter;
				   add: valueLabel);
		  add: (SpBoxLayout newTopToBottom
				   add: incrementButton;
				   add: decrementButton)
]

{ #category : 'initialization' }
CounterPresenter >> initializePresenters [

	valueLabel := self newLabel.
	incrementButton := self newButton.
	decrementButton := self newButton.
	valueLabel
		"label: '0';"
		label: self valueString;
		addStyle: 'counter'.
	incrementButton
		label: 'inc';
		icon: (self iconNamed: #up).
	decrementButton
		label: 'dec';
		icon: (self iconNamed: #down)
]

{ #category : 'initialization' }
CounterPresenter >> initializeWindow: aWindowPresenter [

	super initializeWindow: aWindowPresenter.
	aWindowPresenter
		title: 'Застосунок-лічильник';
		initialExtent: 400 @ 120
]

{ #category : 'accessing - model' }
CounterPresenter >> setModelBeforeInitialization: aModel [

	sourceObj := aModel
]

{ #category : 'private' }
CounterPresenter >> valueString [

	^ sourceObj count printString
]

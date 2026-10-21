"
Навчальний приклад, який демонструє, що об'єднання кількох демонстраторів може бути і самомтійним інтерфейсом, і частиною більшого
"
Class {
	#name : 'ButtonsPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'incrButton',
		'decrButton'
	],
	#category : 'Learn-Project-Counter-SPWindow',
	#package : 'Learn-Project',
	#tag : 'Counter-SPWindow'
}

{ #category : 'accessing' }
ButtonsPresenter >> decrButton [

	^ decrButton
]

{ #category : 'layout' }
ButtonsPresenter >> defaultLayout [

	^ SpBoxLayout newTopToBottom
		  add: incrButton;
		  add: decrButton
]

{ #category : 'accessing' }
ButtonsPresenter >> incrButton [

	^ incrButton
]

{ #category : 'initialization' }
ButtonsPresenter >> initializePresenters [

	incrButton := self newButton.
	decrButton := self newButton.
	incrButton label: 'increment'.
	decrButton label: 'decrement'
]

Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'Learn-Project',
	#package : 'Learn-Project'
}

{ #category : 'tests' }
CounterTest >> testCreation [

	| a b |
	a := Counter new.
	b := Counter new: 5.
	self assert: a count equals: 0.
	self assert: b count equals: 5
]

{ #category : 'tests' }
CounterTest >> testDecrement [

	self should: [Counter new decrement] raise: Error.
	self assert: (Counter new: 5) decrement count equals: 4
]

{ #category : 'tests' }
CounterTest >> testIncrement [

	self assert: Counter new increment count equals: 1.
	self assert: (Counter new: 5) increment count equals: 6
]

Class {
	#name : #ContactTest,
	#superclass : #TestCase,
	#category : #'My-Contacts-Tests'
}

{ #category : #tests }
ContactTest >> testCreateNewContact [
	| contact |
	contact := Contact newNamed: 'Marcus Denker' email: 'marcus.denker@gmail.com'.
	
	self assert: contact fullname equals: 'Marcus Denker'.
	self assert: contact email equals: 'marcus.denker@gmail.com'
]

{ #category : #tests }
ContactTest >> testPrintOn [
	| c |
	c := Contact newNamed: 'Andy' email: 'Andy@andy.com'.
	self assert: c asString equals: 'Andy <Andy@andy.com>'
	
]

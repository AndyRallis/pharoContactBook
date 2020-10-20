Class {
	#name : #ContactBookTest,
	#superclass : #TestCase,
	#category : #'My-Contacts'
}

{ #category : #tests }
ContactBookTest >> testAddContact [
	| c cb |
	c := Contact newNamed: 'Andy Rallis' email: 'andy.rallis@yahoo.com'.
	cb := ContactBook new.
	cb addContact: c.
	self assert: (cb contacts at: 1) equals: c
]

{ #category : #tests }
ContactBookTest >> testContactsInitialize [
	| cb |
	cb := ContactBook new.
	self assert: cb contacts class equals: OrderedCollection new class
]

{ #category : #tests }
ContactBookTest >> testRemoveContact [
	| c cb |
	c := Contact newNamed: 'Andy Rallis' email: 'andy.rallis@yahoo.com'.
	cb := ContactBook new.
	cb addContact: c.
	cb removeContact: c.
	self assert: cb contacts size equals: 0
]

{ #category : #tests }
ContactBookTest >> testRemoveContactDoesNotExist [
	| c cb |
	c := Contact newNamed: 'Andy Rallis' email: 'andy.rallis@yahoo.com'.
	cb := ContactBook new.
	cb removeContact: c.
	self assert: cb contacts size equals: 0
]

"
I'm a contact book that contains a list of contacts. The objects I contain are Contact classes.
"
Class {
	#name : #ContactBook,
	#superclass : #Object,
	#instVars : [
		'contacts'
	],
	#category : #'My-Contacts'
}

{ #category : #'contact adding' }
ContactBook >> addContact: aContact [ 
	self contacts add: aContact
]

{ #category : #initialization }
ContactBook >> contacts [
	^ contacts ifNil: [ contacts := OrderedCollection new ]
]

{ #category : #'contact removal' }
ContactBook >> removeContact: aContact [ 
	self contacts remove: aContact ifAbsent: nil
]

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

{ #category : #current }
ContactBook class >> createDefault [ 
	^ self new
		addContact: (Contact newNamed: 'Boblahblah' email: 'Bob@lablah.me');
		addContact: (Contact newNamed: 'Marcus A.' email: 'marcus.a@gmail.com');
		addContact: (Contact newNamed: 'Clara Voyent' email: 'clari.voyent@gmail.com');
		yourself
]

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

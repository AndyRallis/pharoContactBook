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
		addContact: (Contact newNamed: 'Clara Allende' email: 'clari.allende@gmail.com');
		addContact: (Contact newNamed: 'Damien Cassou' email: 'damien@cassou.me');
		addContact: (Contact newNamed: 'Marcus Denker' email: 'marcus.denker@inria.fr');
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

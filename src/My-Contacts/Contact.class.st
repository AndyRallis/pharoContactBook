"
I am a person with a full name and contact address. I'm usually part of a contact book.
"
Class {
	#name : #Contact,
	#superclass : #Object,
	#instVars : [
		'fullname',
		'email'
	],
	#category : #'My-Contacts'
}

{ #category : #initialization }
Contact class >> newNamed: aFullName email: anEmail [ 
	^ self new 
		fullname: aFullName;
		email: anEmail;
		yourself
]

{ #category : #accessing }
Contact >> email [
	^ email
]

{ #category : #accessing }
Contact >> email: anEmail [ 
	email := anEmail
]

{ #category : #accessing }
Contact >> fullname [
	^ fullname
]

{ #category : #accessing }
Contact >> fullname: aFullname [ 
	fullname := aFullname
]

{ #category : #'as yet unclassified' }
Contact >> gavatarUrl [
	^ 'http://www.gravatar.com/avatar/', (MD5 hashMessage: email asString trimBoth asLowercase) hex, '.jpg'
]

{ #category : #accessing }
Contact >> name [
	self shouldBeImplemented.
]

{ #category : #printing }
Contact >> printOn: aStream [
	aStream
		nextPutAll: self fullname;
		nextPutAll: ' <';
		nextPutAll: self email;
		nextPutAll: '>'
]

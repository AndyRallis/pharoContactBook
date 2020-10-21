Class {
	#name : #WAContactBook,
	#superclass : #WAComponent,
	#instVars : [
		'contactBook'
	],
	#category : #'My-Contacts'
}

{ #category : #'class initialization' }
WAContactBook class >> initialize [ 
	(WAAdmin register: self asApplicationAt: 'contacts')
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary
]

{ #category : #rendering }
WAContactBook >> contactBook [
 ^ contactBook ifNil: [ contactBook := ContactBook createDefault ]
]

{ #category : #rendering }
WAContactBook >> contacts [
 ^ self contactBook contacts
]

{ #category : #rendering }
WAContactBook >> contactsDo: aBlock [ 
	self contacts do: aBlock
]

{ #category : #rendering }
WAContactBook >> renderContact: aContact on: html [ 
	html tableRow: [ 
		html
			tableData: aContact fullname;
			tableData: aContact email;
			tableData: [ self renderPhotoOf: aContact on: html ] ]
]

{ #category : #rendering }
WAContactBook >> renderContactsOn: html [
	html tbsTable: [ 
		html tableHead: [ 
			html 
				tableHeading: 'Name';
				tableHeading: 'Email'; 
				tableHeading: 'Photo'].
		self contactsDo: [ :contact | self renderContact: contact on: html ] ]
]

{ #category : #rendering }
WAContactBook >> renderContentOn: html [ 
	"Main entry point of the view. Render title"
	
	html 
		tbsContainer: [ 
			html heading 
				level: 1;
				with: 'My Contact Book'.
		self renderContactsOn: html ]
]

{ #category : #rendering }
WAContactBook >> renderPhotoOf: aContact on: html [ 
	html image url: aContact gavatarUrl
]

{ #category : #updating }
WAContactBook >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot.
	anHtmlRoot title: 'Contact Book'
]

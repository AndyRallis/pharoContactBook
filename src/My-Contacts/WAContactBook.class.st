Class {
	#name : #WAContactBook,
	#superclass : #WAComponent,
	#category : #'My-Contacts'
}

{ #category : #'class initialization' }
WAContactBook class >> initialize [ 
	WAAdmin register: self asApplicationAt: 'contacts'.
]

{ #category : #rendering }
WAContactBook >> renderContentOn: html [ 
	"Main entry point of the view. Render title"
	
	html heading 
		level: 1;
		with: 'My Contact Book Test2'
]

{ #category : #updating }
WAContactBook >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot.
	anHtmlRoot title: 'Contact Book'
]

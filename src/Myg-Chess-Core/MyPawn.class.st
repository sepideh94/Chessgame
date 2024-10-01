Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#instVars : [
		'hasMoved'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyPawn >> hasMoved [
	^ hasMoved 
]

{ #category : 'accessing' }
MyPawn >> hasMoved: aBoolean [
	hasMoved := aBoolean 
]

{ #category : 'accessing' }
MyPawn >> id [

	^ 'P'
]

{ #category : 'initialization' }
MyPawn >> initialize [ 
	super initialize.
	hasMoved := false
]

{ #category : 'path commands' }
MyPawn >> moveTo: aSquare [
	super moveTo: aSquare.
	hasMoved := true
]

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [ 
	
	^ aSquare renderPawn: self
]

{ #category : 'rendering' }
MyPawn >> targetSquaresLegal: aBoolean [

    ^ ((self isWhite
            ifTrue: [
                hasMoved 
                    ifTrue: [ { square up } ]
                    ifFalse: [ { square up. square up up } ] ]
            ifFalse: [
                hasMoved 
                    ifTrue: [ { square down } ]
                    ifFalse: [ { square down. square down down } ] ])
        select: [ :s |
            s notNil and: [ s hasPiece not or: [ s contents color ~= color ] ] ])

]

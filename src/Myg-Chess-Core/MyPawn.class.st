Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#instVars : [
		'hasMoved'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyPawn >> captureMovesFor: aPawn [ 
    | captureMoves |
    captureMoves := { 
        aPawn square + (-1 @ (aPawn isWhite ifTrue: [1] ifFalse: [-1])).
        aPawn square + (1 @ (aPawn isWhite ifTrue: [1] ifFalse: [-1]))
    }.
    
    captureMoves := captureMoves select: [ :s | 
        s notNil and: [ s hasPiece and: [ s contents color ~= aPawn color ] ] 
    ].
    ^ captureMoves

]

{ #category : 'as yet unclassified' }
MyPawn >> diagonalSquares [

	^ self isWhite
		  ifTrue: [
			  {
				  square upLeftDiagonal.
				  square upRightDiagonal } ]
		  ifFalse: [
			  {
				  square downLeftDiagonal.
				  square downRightDiagonal } ]
]

{ #category : 'as yet unclassified' }
MyPawn >> forwardMovesFor: aPawn [
	| forwardMoves |
	forwardMoves := (aPawn isWhite
		                 ifTrue: [
			                 aPawn hasMoved
				                 ifTrue: [ { aPawn square up } ]
				                 ifFalse: [
					                 {
						                 aPawn square up.
						                 aPawn square up up } ] ]
		                 ifFalse: [
			                 aPawn hasMoved
				                 ifTrue: [ { aPawn square down } ]
				                 ifFalse: [
					                 {
						                 aPawn square down.
						                 aPawn square down down } ] ]) select: [ :s |
		                s notNil and: [ s hasPiece not ] ].
	^ forwardMoves 
]

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
    | forwardMoves captureMoves |

    "Get forward moves"
    forwardMoves := self forwardMovesFor: self.
    
    "Get capture moves"
    captureMoves := self captureMovesFor: self.
    
    "Combine both types of moves"
    ^ captureMoves, forwardMoves

]

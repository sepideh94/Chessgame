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

	| forwardMoves nextSquare |
	forwardMoves := OrderedCollection new.

	"Determine the first square"
	nextSquare := aPawn isWhite
		              ifTrue: [ aPawn square up ]
		              ifFalse: [ aPawn square down ].

	"Check the first square"
	nextSquare notNil and: [
		nextSquare hasPiece ifFalse: [
			forwardMoves add: nextSquare.

			"Determine the second square only if the first square is empty and the pawn has not moved"
			aPawn hasMoved ifFalse: [
				nextSquare := aPawn isWhite
					              ifTrue: [ nextSquare up ]
					              ifFalse: [ nextSquare down ].

				nextSquare notNil and: [
					nextSquare hasPiece ifFalse: [ forwardMoves add: nextSquare ] ] ] ] ].

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

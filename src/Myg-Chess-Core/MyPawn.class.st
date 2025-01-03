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
MyPawn >> captureDirectionForPawn: aPawn [
    self subclassResponsibility.

]

{ #category : 'as yet unclassified' }
MyPawn >> captureMovesFor: aPawn [
    | captureMoves |
    
    "Obtenir les directions de capture en appelant la méthode spécifique à chaque sous-classe"
    captureMoves := self captureDirectionForPawn: aPawn.
    
    "Filtrer les directions valides"
    captureMoves := captureMoves select: [ :s | 
        s notNil and: [ 
            s hasPiece and: [ s contents color ~= aPawn color ] 
        ] 
    ].
    
    "Retourner les directions valides"
    ^ captureMoves

]

{ #category : 'accessing' }
MyPawn >> firstForwardSquare [
"Subclasses must override this method to determine the first forward square."
    self subclassResponsibility.
]

{ #category : 'as yet unclassified' }
MyPawn >> forwardMovesFor: aPawn [
    | forwardMoves nextSquare |
    forwardMoves := OrderedCollection new.

    "Determine the first square"
    nextSquare := aPawn firstForwardSquare.

    "Check the first square"
    nextSquare notNil and: [
        nextSquare hasPiece ifFalse: [
            forwardMoves add: nextSquare.

            "Determine the second square only if the first square is empty and the pawn has not moved"
            aPawn hasMoved ifFalse: [
                nextSquare := aPawn nextForwardSquare: nextSquare.

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

{ #category : 'as yet unclassified' }
MyPawn >> nextForwardSquare: aSquare [
    "Subclasses must override this method to determine the next forward square."
    self subclassResponsibility.

]

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [

	^ self subclassResponsibility
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

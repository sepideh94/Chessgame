Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest >> testId [

	self assert: MyPawn new id equals: 'P'
]

{ #category : 'tests' }
MyPawnTest >> testMovesForBlack [

	| pawn squares board |
	board := MyChessBoard empty.
	board at: 'e7' put: (pawn := MyPawn white ).

	squares := pawn targetSquares.
	self
		assertCollection: squares
		includesAll:
			(#( e8 ) collect: [ :name |
				 board at: name ])
]

{ #category : 'tests' }
MyPawnTest >> testMovesForWhite [
	| pawn squares board |
	board := MyChessBoard empty.
	board at: 'e2' put: (pawn := MyPawn white ).

	squares := pawn targetSquares.
	self
		assertCollection: squares
		includesAll:
			(#( e3 ) collect: [ :name |
				 board at: name ])
]

{ #category : 'tests' }
MyPawnTest >> testMovesInFirstMove [

	| pawn squares board |
	board := MyChessBoard empty.
	board at: 'e2' put: (pawn := MyPawn white ).

	squares := pawn targetSquares.
	self
		assertCollection: squares
		includesAll:
			(#( e4 ) collect: [ :name |
				 board at: name ])
]

{ #category : 'tests' }
MyPawnTest >> testRenderPieceOneIsNil [

	| aSquare aPiece result |
    "aSquare := aSquare new."
    aPiece := MyPawn new.
    
    result := aPiece renderPieceOn: aSquare.
    
    "Ensure the result is not nil"
    self assert: result notNil.
]

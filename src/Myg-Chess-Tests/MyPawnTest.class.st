Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest >> testDiagonalMoves [

	| pawn board squares |
	self skip.
	board := MyChessBoard empty.
	board at: 'e2' put: (pawn := MyPawn white).

	"Vérifier que le pion peut se déplacer en diagonale pour capter les ennemies"
	squares := pawn targetSquaresLegal: true.
	self assert: (squares includes: (board at: 'f3'))
]

{ #category : 'tests' }
MyPawnTest >> testId [

	self assert: MyPawn new id equals: 'P'
]

{ #category : 'tests' }
MyPawnTest >> testLengthOneFirstMovesIsPossible [

	| pawn board squares |
	board := MyChessBoard empty.
	board at: 'e2' put: (pawn := MyPawn white).

	"Vérifier que le pion peut se déplacer de deux cases pour la premiere fois"
	squares := pawn targetSquaresLegal: true.
	self assert: (squares includes: (board at: 'e3'))
]

{ #category : 'tests' }
MyPawnTest >> testLengthOneNotFirstMovesIsPossible [

	"We should move a pawn of one
	then make sure that we can one
	
	then we should have another test
	that 
		move a pawn of one
		cannot move this pawn of two
	"
	| pawn board squares |
	self skip.
	board := MyChessBoard empty.
	board at: 'e2' put: (pawn := MyPawn white).

	"Vérifier que le pion peut se déplacer de deux cases pour la premiere fois"
	squares := pawn targetSquaresLegal: true.
	self assert: (squares includes: (board at: 'e3'))
]

{ #category : 'tests' }
MyPawnTest >> testLengthTwoFirstMovesIsPossible [

	| pawn board squares |
	board := MyChessBoard empty.
	board at: 'e2' put: (pawn := MyPawn white).

	"Vérifier que le pion peut se déplacer de deux cases pour la premiere fois"
	squares := pawn targetSquaresLegal: true.
	self assert: (squares includes: (board at: 'e4'))
]

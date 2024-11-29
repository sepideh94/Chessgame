Class {
	#name : 'MyKingTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyKingTest >> testIsCheckByOpponentsRook [

	| king board |
	board := MyChessBoard empty.
	board at: 'e4' put: (king := MyWhiteKing new).

	"Put an atacker rook on e column"
	board at: 'e1' put: MyBlackRook new.

	self deny: king isInCheck
]

{ #category : 'tests' }
MyKingTest >> testIsNotCheckBySameColorRook [

	| king board |
	board := MyChessBoard empty.
	board at: 'e4' put: (king := MyWhiteKing new).

	"Put an same color rook on e column"
	board at: 'e1' put: MyWhiteRook new.

	self deny: king isInCheck
]

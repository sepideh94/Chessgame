Class {
	#name : 'MyWhiteKing',
	#superclass : 'MyKing',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyWhiteKing >> opponentPieces [

	color:= Color white.
	^ self board pieces select: [ :e |
		  e notNil and: [ e color = color negated ] ]
]

{ #category : 'rendering' }
MyWhiteKing >> renderPieceOn: aSquare [

	^ aSquare renderWhiteKing
]

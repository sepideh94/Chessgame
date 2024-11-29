Class {
	#name : 'MyBlackKing',
	#superclass : 'MyKing',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyBlackKing >> opponentPieces [

	color:= Color black.
	^ self board pieces select: [ :e |
		  e notNil and: [ e color = color negated ] ]
]

{ #category : 'rendering' }
MyBlackKing >> renderPieceOn: aSquare [

	^ aSquare renderBlackKing
]

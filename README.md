### Sepideh Soleimani
# Myg Chess Game

What is this repository really about:

The goal of this repository is to demonstrate the initial chess game setup, including the implementation of my Kata and the accompanying tests.

## My Kata:
### Refactor piece rendering

Goal: Practice refactorings, double dispatch and table dispatch

I chose to work on refactoring the Piece Rendering Kata and Leila on Pawn separately. My primary goal was to challenge myself in object-oriented programming (OOP) using Pharo. In my view, practicing and mastering OOP in Pharo is both simple and challenging, making it a perfect environment for refining my skills.
For this kata, I decided to implement double dispatch instead of table dispatch. Double dispatch is particularly suitable when dealing with two objects, such as MyPiece and MyChessSquare in this context. In contrast, table dispatch is typically used to determine which method to invoke based on the combination of multiple types or conditions, often through a lookup table. Based on my understanding, double dispatch seems more convenient for this task. The primary objective of this kata is to minimize the use of conditionals as much as possible.

### We have four conditions: 
If the knight is black:
Black square → Return 'm' (lowercase).
White square → Return 'M' (uppercase).
If the knight is white:
Black square → Return 'n' (lowercase).
White square → Return 'N' (uppercase).

To minimize the use of conditionals like ifTrue: and ifFalse:, I decided to implement double dispatch. This approach allowed me to assign the correct letter to a chess piece based on both its color and the color of the square it occupies.
To achieve this, I defined two subclasses for the square (White and Black) and two subclasses for each piece (WhitePiece and BlackPiece). While it was possible to subclass only the squares and eliminate two conditions, my "priority" was to remove all conditions. Hence, I extended this approach to the pieces as well.
The core logic of my solution resides in the subclasses of the square and the chess pieces. Therefore, my code can be found basically in subclasses of square and all pieces. I implemented methods in each class to return the appropriate letter for rendering based on the specific piece and square.
The next step was to reinitialize the squares and pieces to ensure they were assigned to the correct classes from the beginning of the game. For the squares, I created a new method called initialize in each of the square's subclasses to assign the appropriate color. Additionally, I defined a method named initializeSquares, which is called at the end of the main initialize method. This ensures that the correct square classes are properly initialized.

For the pieces, reinitializing them with the correct classes presented some challenges. I spent a significant amount of time identifying where the pieces were initially defined. At first, I thought this was handled by the initializePieces method, but I later realized there were no senders for this method. As a result, I removed the method.
Eventually, I discovered that the pieces were being defined through a dictionary in the initialize method of the MyFENParser class. I updated the dictionary by allocating the right classes to each letter.
This change allowed me to eliminate all rendering methods containing four conditional statements. Instead, the renderPieceOn: method, defined differently in each subclass of the pieces, now determines the correct letter to render based on the color of the square and the piece (polymorphism).

Throughout the coding process, I ensured each step was validated by writing new tests. Additionally, I ensured that all the original tests in the Myg-Chess-Test class passed successfully. I wrote tests for all 24 cases to verify that the rendering returned the correct results for each scenario. Furthermore, I added tests for exceptional cases, such as NilColor, NilPiece, and invalid data types. Most of my tests focused on ensuring the correctness of all rendering types and verifying edge cases to strengthen the robustness of the implementation.

### Using it
You can open the chess game using the following expression:

board := MyChessGame freshGame.
board size: 800@600.
space := BlSpace new.
space root addChild: board.
space pulse.
space resizable: true.
space show.

### Implemented Design Patterns:
Double Dispatch: Simplifies rendering by dynamically adapting to the runtime types of the piece and square, eliminating conditional logic.
Polymorphism: different implementation for renderPieceOn method.
Inheritance: Establishes a hierarchical structure for MyPiece and MyChessSquare, allowing shared behavior to be defined in parent classes while enabling specific behaviors in subclasses. This reduces duplication and aligns with object-oriented principles.
Test-Driven Development (TDD): Strengthened code robustness by focusing on both standard and edge cases, ensuring the correctness of rendering logic and edge-case handling.

### Not Implemented Design Patterns:
Composition was not applied because inheritance sufficiently addressed the problem requirements.
Composite Pattern: It wasn’t necessary here because the problem didn’t involve managing collections of objects as a single unit. Each piece and square had distinct behavior, which didn’t require aggregation or shared composition logic.
Visitor Pattern: In this approach, double dispatch achieved the same goal of selecting operations based on two interacting objects. The rendering logic was encapsulated within the objects themselves, eliminating the need for an external visitor.

At the end I change the blue and orange to black and red simply because I like it better :)
Thank you for your time.

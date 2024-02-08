#Define compiler and flags
CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11

#Define targets
all: build sdist

#Target for building the release version of the game
build: othello-game

#Target for building the debug version of the game
debug: othello-game-debug

#Target for creating the source distribution archive
sdist: othello-sdist.tar.gz

#Rule for building the release version of the game
othello-game: main.cpp OthelloBoard.cpp OthelloBoard.hpp
	$(CXX) $(CXXFLAGS) -o othello-game main.cpp OthelloBoard.cpp

#Rule for building the debug version of the game
othello-game-debug: main.cpp OthelloBoard.cpp OthelloBoard.hpp
	$(CXX) $(CXXFLAGS) -o othello-game-debug -DDEBUG main.cpp OthelloBoard.cpp

#Rule for creating the source distribution archive
othello-sdist.tar.gz: main.cpp OthelloBoard.cpp OthelloBoard.hpp Makefile
	tar -czf othello-sdist.tar.gz main.cpp OthelloBoard.cpp OthelloBoard.hpp Makefile

#Rule for cleaning generated files
clean:
	rm -f othello-game othello-game-debug othello-sdist.tar.gz

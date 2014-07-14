# Week 4 group project - Battleships
## Dave, Charlotte, Thomas, Talal

For this week we have been placed into a team of four and tasked with recreating a game of Battleships in Ruby. Over four days we will work on a domain model, implement that model's classes, build the core game engine and finally add a user interface.

Version 0 - Domain model

Ship

Has a 					Length
	
Knows if it’s 			Sunk

Player

Places 					Ship on board

Fires missiles at 		Board

Has a 					Board

Board

Knows location of 		Ships

Checks ship’s position is valid Player

Knows location of 		Hits/misses

Knows location of 		Squares

Has 10x10 				Squares

Game

Knows who’s turn it is 	Player

Changes turn 			Player

Asks player for input 	Player
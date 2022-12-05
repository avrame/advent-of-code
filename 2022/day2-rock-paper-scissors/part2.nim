import std/strutils
import std/tables

var
  win = {"A": "Y", "B": "Z", "C": "X"}.toTable
  draw = {"A": "X", "B": "Y", "C": "Z"}.toTable
  lose = {"A": "Z", "B": "X", "C": "Y"}.toTable
  play_score = {"X": 1, "Y": 2, "Z": 3}.toTable
  score = 0

for line in lines "input.txt":
  let
    plays = line.split(" ")
    elf_play = plays[0]
    strategy = plays[1]

  # Lose
  if strategy == "X":
    score += play_score[lose[elf_play]]
  # Draw
  elif strategy == "Y":
    score += 3 + play_score[draw[elf_play]]
  # Win
  else:
    score += 6 + play_score[win[elf_play]]

echo score
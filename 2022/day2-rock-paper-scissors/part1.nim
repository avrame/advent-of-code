import std/strutils
import std/tables

var
  win = {"A": "Y", "B": "Z", "C": "X"}.toTable
  draw = {"A": "X", "B": "Y", "C": "Z"}.toTable
  play_score = {"X": 1, "Y": 2, "Z": 3}.toTable
  score = 0

for line in lines "input.txt":
  let
    plays = line.split(" ")
    elf_play = plays[0]
    my_play = plays[1]

  score += play_score[my_play]

  if win[elf_play] == my_play:
    score += 6
  elif draw[elf_play] == my_play:
    score += 3

echo score
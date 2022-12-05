import std/sets
import std/strutils

let alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

var priorities_sum = 0

for line in lines "input.txt":
  let
    line_length = line.len
    halfway = int(line_length / 2)
    rucksack_1 = line[0..halfway - 1]
    rucksack_2 = line[halfway..line_length - 1]
  var
    rucksack_set1 = toHashSet(rucksack_1)
    rucksack_set2 = toHashSet(rucksack_2)
  
  for item in rucksack_set1 * rucksack_set2:
    priorities_sum += alphabet.find(item) + 1

echo priorities_sum
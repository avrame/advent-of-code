import std/sets
import std/sequtils

let alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

var
  priorities_sum = 0
  rucksacks: seq[string]

for line in lines "input.txt":
  rucksacks.add(line)
  if rucksacks.len == 3:
    var badges = toHashSet(rucksacks[0]) * toHashSet(rucksacks[1]) * toHashSet(rucksacks[2])
    priorities_sum += alphabet.find(badges.pop) + 1
    rucksacks.delete(0..rucksacks.len - 1)

echo priorities_sum
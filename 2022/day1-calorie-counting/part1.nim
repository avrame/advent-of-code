import std/strutils

var curr_elf_cals = 0
var max_cals = 0

for line in lines "calories.txt":
  if line.isEmptyOrWhiteSpace:
    if curr_elf_cals > max_cals:
      max_cals = curr_elf_cals
    curr_elf_cals = 0
  else:
    curr_elf_cals += line.parseInt

echo max_cals
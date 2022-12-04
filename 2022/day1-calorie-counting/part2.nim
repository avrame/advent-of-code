import std/strutils

var curr_elf_cals = 0
var most_cals_1 = 0
var most_cals_2 = 0
var most_cals_3 = 0

for line in lines "calories.txt":
  if line.isEmptyOrWhiteSpace:
    if curr_elf_cals > most_cals_1:
      most_cals_1 = curr_elf_cals
    elif curr_elf_cals > most_cals_2:
      most_cals_2 = curr_elf_cals
    elif curr_elf_cals > most_cals_3:
      most_cals_3 = curr_elf_cals
    curr_elf_cals = 0
  else:
    curr_elf_cals += line.parseInt

echo most_cals_1 + most_cals_2 + most_cals_3
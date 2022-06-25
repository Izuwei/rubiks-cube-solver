# Rubik's cube solver
At the beginning, the program reads input from standard input *(read_lines, split_lines)*. The loaded input structure is simplified to a list of characters *(flatten)* and thus the cube is represented by the rest of the program run. Follows a recursive search for a solution *(solve_cube)* by applying all possible movements of the cube *(rotate_cube)* until the cube is solved *(is_solved)*. After finding the solution, the initial configuration of the cube *(show_cube)* and all configurations in which it was on the way to the correct solution *(show_cubes)* are written to standard output. The depth-first search algorithm is used to find the solution.

A total of 18 rotations are implemented according to all possible movements of the real cube:
- vertically left, middle and right column
- horizontally top, middle and bottom row
- when looking at the cube from the right, again left, middle and right column vertically

These 9 rotations are implemented including opposite movements, ie 18 in total.

## Installation
- For compilation use `make`.

```
./cube < [file]
```

File contains an input configuration of the cube - for more details see directory `test`.

## Test
Total of 8 files are provided *(directory `test`)* with cube configurations named according to the number of steps leading to their solution. Testing was performed using the `time` utility. The resulting measured times are listed below.

- 1_steps.in - <20ms
- 2_steps.in - <20ms
- 3_steps.in - <20ms
- 4_steps.in - 43ms
- 5_steps.in - 361ms
- 6_steps.in - 5.624s
- 7_steps.in - 1m 42s
- 8_steps.in - 29m 57s

## Example
```
./cube < ./test/3_steps.in
```
> 351  
> 251  
> 351  
> 516 222 536 454  
> 544 116 226 434  
> 516 222 536 434  
> 163  
> 463  
> 163  
> 
> 551  
> 551  
> 551  
> 116 222 533 444  
> 444 116 222 533  
> 116 222 533 444  
> 663  
> 663  
> 663  
> 
> 551  
> 551  
> 551  
> 116 222 533 444  
> 116 222 533 444  
> 116 222 533 444  
> 663  
> 663  
> 663  
> 
> 555  
> 555  
> 555  
> 111 222 333 444  
> 111 222 333 444  
> 111 222 333 444  
> 666  
> 666  
> 666  

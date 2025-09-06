# ✨ Exercise 7

193.16.20.35/29

What is the Network IP, number of hosts, range of IP addresses and broadcast IP from this subnet?

## 🖊 Instruction

- Submit all your answer as a markdown file in the folder for this exercise.

## 🚀 Result

- Convert the last octect (35) in the gven IP to binary

  ```
  35 | 2 r 1
  17 | 2 r 1
  8  | 2 r 0
  4  | 2 r 0
  2  | 2 r 0
  1  | 2 r 1
  0  |
  ```

- Get the subnet mask

  1111111 11111111 11111111 11111000

  225 225 225 248

  3 host bits = 2³ = 8 total addresses

- Identify the Block Where .35 Belongs

  35 ÷ 8 = 4.375 approx 4

  4 × 8 = 32

1. Network IP: 193.16.20.32/29

2. Number of hosts: 6

3. Range of IP addresses: 193.16.20.33 – 193.16.20.38

4. Broadcast IP: 193.16.20.39

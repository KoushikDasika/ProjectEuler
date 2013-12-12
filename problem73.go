package main

import "fmt"

func main() {
  limit := 12000
  a := 1
  b := 3
  c := 4000
  d := 11999

  result := 0

  for {
    if (!(c == 1 && d == 2)) {
      result++
      k := (limit + b) / d
      e := k * c - a
      f := k * d - b
      a = c
      b = d
      c = e
      d = f
    } else {
      break
    }
  }
  fmt.Println("the answer is ", result)
}

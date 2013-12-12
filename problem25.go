package main

import "fmt"
import "math/big"



func thousand_digits(divisor, input *big.Int) bool {
  return input.Cmp(divisor) >= 0
}

func main() {
  first_term := big.NewInt(1)
  second_term := big.NewInt(1)
  ten := big.NewInt(10)
  divisor := ten.Exp(big.NewInt(10), big.NewInt(999), big.NewInt(0))


  for i := 1; ; i++ {
    first_test := thousand_digits(divisor, first_term)
    if first_test {
      fmt.Println("factorial is ", first_term.String(), "which is the ", i, "th numbe and its length is ", len(first_term.String()))
      break
    }
    i += 1

    second_test := thousand_digits(divisor, second_term)
    if second_test {
      fmt.Println("factorial is ", second_term.String(), "which is the ", i, "th number and its length is", len(second_term.String()))
      break
    }

    new_first := new(big.Int)
    new_second := new(big.Int)

    new_first.Add(first_term, second_term)
    new_second.Add(new_first, second_term)

    first_term = new_first
    second_term = new_second
  }
}

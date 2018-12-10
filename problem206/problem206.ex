max_number = 1929394959697989900
starting_number = 138902663 # sqrt(19293949596979899)

defmodule Test do
  def is_match?(number) do
    number = Integer.to_string(number, 10)
    Regex.match?(~r/1.2.3.4.5.6.7.8.9/, number)
  end

  def is_square?(number) when rem(number, 10) == 3 do
    if is_match?(number * number) do
      IO.puts "answer be #{number * 10}"
    else
      is_square?(number - 2)
    end
  end

  def is_square?(number) when rem(number, 10) == 7 do
    if is_match?(number * number) do
      IO.puts "answer be #{number * 10}"
    else
      is_square?(number - 2)
    end
  end

  def is_square?(number), do: is_square?(number - 2)
end

Test.is_square?(starting_number)

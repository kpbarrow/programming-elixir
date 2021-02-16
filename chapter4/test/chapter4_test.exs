
defmodule Chapter4Test do
  defmodule Functions2 do
    use ExUnit.Case
    doctest Chapter4.Functions2
    test "fizz_buzz first two args zero returns FizzBuzz" do
      assert Chapter4.Functions2.fizz_buzz(0,0,2) == "FizzBuzz"
    end

    test "fizz_buzz first arg zero returns Fizz" do
      assert Chapter4.Functions2.fizz_buzz(0,1,2) == "Fizz"
    end

    test "fizz_buzz second arg zero returns Fizz" do
      assert Chapter4.Functions2.fizz_buzz(1,0,2) == "Buzz"
    end

    test "fizz_buzz neither first args zero third arg" do
      assert Chapter4.Functions2.fizz_buzz(1,1,2) == 2
    end
  end
  defmodule Functions3 do
    use ExUnit.Case
    doctest Chapter4.Functions3
    test "Exercise Functions-3, n=10" do
      assert Chapter4.Functions3.fizz_buzz_classic(10) == "Buzz"
    end

    test "Exercise Functions-3, n=11" do
      assert Chapter4.Functions3.fizz_buzz_classic(11) == 11
    end

    test "Exercise Functions-3, n=12" do
      assert Chapter4.Functions3.fizz_buzz_classic(12) == "Fizz"
    end

    test "Exercise Functions-3, n=13" do
      assert Chapter4.Functions3.fizz_buzz_classic(13) == 13
    end

    test "Exercise Functions-3, n=14" do
      assert Chapter4.Functions3.fizz_buzz_classic(14) == 14
    end

    test "Exercise Functions-3, n=15" do
      assert Chapter4.Functions3.fizz_buzz_classic(15) == "FizzBuzz"
    end

    test "Exercise Functions-3, n=16" do
      assert Chapter4.Functions3.fizz_buzz_classic(16) == 16
    end

    test "Exercise Functions-3, n=17" do
      assert Chapter4.Functions3.fizz_buzz_classic(17) == 17
    end
  end
  defmodule Functions4 do
    use ExUnit.Case
    doctest Chapter4.Functions4
    test "Exercise Functions-4, Mrs" do
      mrs = Chapter4.Functions4.prefix("Mrs")
      assert mrs.("Smith") == "Mrs Smith"
    end
    test "Exercise Functions-4, Elixir Rocks" do
      assert Chapter4.Functions4.prefix("Elixir").("Rocks") == "Elixir Rocks"
    end
  end
  defmodule PinnedParameters do
    use ExUnit.Case
    doctest Chapter4.PinnedParameters
    test "Pinned returns greeting" do
      known=Chapter4.PinnedParameters.for("Keith", "Hiya")
      assert known.("Keith") == "Hiya Keith"
    end
    test "Un pinned returns uknown response" do
      known=Chapter4.PinnedParameters.for("Keith", "Hiya")
      assert known.("Mr Poo Bums") == "I don't know you!"
    end
  end
  defmodule AmpersandNotation do
    use ExUnit.Case
    doctest Chapter4.AmpersandNotation
    test "Exercise Functions-4, Mrs" do
      mrs = Chapter4.AmpersandNotation.prefix("Mrs")
      assert mrs.("Smith") == "Mrs Smith"
    end

    test "Exercise Functions-4, Elixir Rocks" do
      assert Chapter4.AmpersandNotation.prefix("Elixir").("Rocks") == "Elixir Rocks"
    end
  end
  defmodule Functions5 do
    use ExUnit.Case
    doctest Chapter4.Functions5
    test "Exercise Functions-5, add 2 to each element" do
      assert Chapter4.Functions5.map_add2([1,2,3,4]) == [3,4,5,6]
    end
    test "Exercise Functions-5, foo add 2 to each element" do
      assert Chapter4.Functions5.map_to_console([1,2,3,4]) == [1,2,3,4]
    end
  end
end

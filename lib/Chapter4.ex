defmodule Chapter4 do
  defmodule Functions2 do
    def fizz_buzz(0,0,_), do: "FizzBuzz"
    def fizz_buzz(0,_,_), do: "Fizz"
    def fizz_buzz(_,0,_), do: "Buzz"
    def fizz_buzz(_, _, thirdArg), do: thirdArg
  end
  defmodule Functions3 do
    def fizz_buzz_classic(n), do: Functions2.fizz_buzz(rem(n,3), rem(n,5), n)
  end
  defmodule Functions4 do
    def prefix(prefix), do: fn str -> "#{prefix} #{str}" end
  end
  defmodule PinnedParameters do
    def for(name, salutation) do
      fn
        (^name) -> "#{salutation} #{name}"
        (_) -> "I don't know you!"
      end
    end
  end
  defmodule AmpersandNotation do
    # c.f. Functions4.Prefix
    def prefix(prefix), do: &("#{prefix} #{&1}")
  end

  defmodule Functions5 do
    def map_add2(list), do: Enum.map(list, &(&1 +2))
    def map_to_console(list), do: Enum.map(list, &(IO.inspect(&1)))
  end
end

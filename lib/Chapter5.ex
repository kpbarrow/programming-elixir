defmodule Chapter5 do
  defmodule Exercises1To3 do
    def double(n), do: n*2
    def triple(n), do: n*3
    def quadruple(n), do: double(double(n))
  end

  defmodule Factorial do
    def of(0), do: 1
    def of(n), do: n * of(n-1)
  end

  defmodule ModulesAndFunctions4 do
    def summate(0), do: 0
    def summate(n), do: n + summate(n-1)
  end

  defmodule ModulesAndFunctions5 do
      def gcd(x, 0), do: x
      def gcd(x, y), do: gcd(y, rem(x,y))
  end
  defmodule Guard do
    def what_is(x) when is_number(x) do
      "#{x} is a number"
    end
    def what_is(x) when is_list(x) do
      "#{x} is a list"
    end
    def what_is(x) when is_atom(x) do
      "#{x} is an atom"
    end
  end

  defmodule FactorialBetter do
    def of(0), do: 1
    def of(n) when is_integer(n) and n > 0 do
      n * of(n-1)
    end
  end
end

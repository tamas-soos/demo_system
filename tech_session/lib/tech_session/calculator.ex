defmodule Calculator do
  def calc(a, "+", b) do
    a + b
  end

  def calc(a, "-", b) do
    a - b
  end

  def calc(a, "*", b) do
    a * b
  end

  # foo(bar(translate(format_value(select_value(state)))))

  # state |> select_value() |> format_value() |> translate() |> bar() |> foo()
end

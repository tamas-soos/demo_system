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

  # foo(bar(translate(format(select_item(state)))))

  # state |> select_item() |> format() |> translate() |> bar() |> foo()
end

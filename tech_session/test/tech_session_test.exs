defmodule TechSessionTest do
  use ExUnit.Case
  doctest TechSession

  test "greets the world" do
    assert TechSession.hello() == :world
  end
end

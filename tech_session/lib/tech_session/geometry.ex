defmodule Geometry do
  def area({:rectangle, a, b}) do
    a * b
  end

  def area({:square, a}) do
    a * a
  end

  def area(:square, a) do
    a * a
  end

  def area({:circle, r}) do
    r * r * 3.14
  end

  def area(shape) do
    {:error, {:unknown_shape, shape}}
  end
end

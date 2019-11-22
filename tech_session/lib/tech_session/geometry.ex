defmodule Geometry do
  def area({:rectangle, a, b}) do
    a * b
  end

  def area({:square, a}) do
    a * a
  end

  def area({:circle, r}) do
    r * r * 3.14
  end

  def area(shape) do
    {:error, {:unknown_shape, shape}}
  end

  # def area(:square, a) do
  #   a * a
  # end

  # def area(shape) do
  #   case shape do
  #     {:rectangle, a, b} -> a * b
  #     {:square, a} -> a * a
  #     {:circle, r} -> r * r * 3.14
  #     _ -> {:error, {:unknown_shape, shape}}
  #   end
  # end
end

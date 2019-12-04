# cd("C:\\Users\\jdorr\\Desktop\\Dev\\ElixirDump\\src")
# c("recursion.ex")
# M.main

defmodule M do
  def main do
    recursion_stuff()
  end
  
  def recursion_stuff do  
    
    IO.puts "Factorial of 50 = #{factorial(50)}"
    
  end
  
  def factorial(x) do
    if x <= 1 do
      1
    else
      x * factorial(x - 1)
    end
  end
end
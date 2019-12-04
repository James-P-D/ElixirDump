# cd("C:\\Users\\jdorr\\Desktop\\Dev\\ElixirDump\\src")
# c("looping.ex")
# M.main

defmodule M do
  def main do
    looping_stuff()
  end
  
  def looping_stuff() do  
    
    IO.puts "Sum: #{sum([1,2,3])}"
    
    IO.puts "-------------------------------------------------------" 
    
    loop(5, 1)
    
    IO.puts "-------------------------------------------------------"     
  end
  
  def sum([]), do: 0  
  def sum([head|tail]), do: head + sum(tail)
  
  def loop(0, _), do: nil
  def loop(x, y) do
    if x < y do
      loop(0, y)
    else
      IO.puts x
      loop(x - 1, y)
    end
  end
end
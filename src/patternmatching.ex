# cd("C:\\Users\\jdorr\\Desktop\\Dev\\ElixirDump\\src")
# c("patternmatching.ex")
# M.main

defmodule M do
  def main do
    patternmatching_stuff()
  end
  
  def patternmatching_stuff do  
    [length, width] = [20, 30]
    IO.puts "Length: #{length}"
    IO.puts "Width: #{width}"
    
    IO.puts "-------------------------------------------------------" 

    [_, [a, _]] = [10, [20, 30]]
    IO.puts "a: #{a}"
  end
end
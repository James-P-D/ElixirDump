# cd("C:\\Users\\jdorr\\Desktop\\Dev\\ElixirDump\\src")
# c("comparisons.ex")
# M.main

defmodule M do
  def main do
    comparison_stuff()
  end
  
  def comparison_stuff do  
    IO.puts "4 == 4.0 ? #{4 == 4.0}"    # true
    IO.puts "4 === 4.0 ? #{4 === 4.0}"  # false
    IO.puts "4 != 4.0 ? #{4 != 4.0}"    # falase
    IO.puts "4 !== 4.0 ? #{4 !== 4.0}"  # true
    
    IO.puts "4 > 5 ? #{4 > 5}"
    IO.puts "4 < 5 ? #{4 < 5}"
    IO.puts "4 >= 5 ? #{4 >= 5}"
    IO.puts "4 <= 5 ? #{4 <= 5}" # Gah! unlike some functional languages, apparentls 'arrows' are just fine in Elixir
    
    age = 18
    
    IO.puts  
    # 16:44 IN VIDEO!
    https://www.youtube.com/watch?v=pBNOavRoNL0
  end
end
# cd("C:\\Users\\jdorr\\Desktop\\Dev\\ElixirDump\\src")
# c("listcomp.ex")
# M.main

defmodule M do
  def main do
    listcomp_stuff()
  end
  
  def listcomp_stuff() do  
       
    double_list = for n <- [1, 2, 3, 4], do: n * 2
    IO.inspect double_list
    
    IO.puts "-------------------------------------------------------"     

    even_list = for n <- [1, 2, 3, 4], rem(n, 2) == 0, do: n
    IO.inspect even_list
    
    IO.puts "-------------------------------------------------------"     

  end

  def display_list([head|tail]) do
    IO.puts(head)
    display_list(tail)
  end
  
  def display_list([]), do: nil

end
# cd("C:\\Users\\jdorr\\Desktop\\Dev\\ElixirDump\\src")
# c("enums.ex")
# M.main

defmodule M do
  def main do
    enums_stuff()
  end
  
  def enums_stuff() do  
       
    only_even = Enum.all?([1,2,3,4,5,6], fn (x) -> rem(x, 2) == 0 end)
        
    IO.puts "-------------------------------------------------------" 
    
    IO.puts "Any Even? #{Enum.any?([1,2,3,4,5,6], fn (x) -> rem(x, 2) == 0 end)}"
    
    IO.puts "-------------------------------------------------------"     
    
    Enum.each([1,2,3,4,5,6], fn(n) -> IO.puts n end)

    IO.puts "-------------------------------------------------------"     

    double_list = Enum.map([1,2,3,4,5,6], fn (n) -> n * 2 end)
    display_list(double_list)
    
    IO.puts "-------------------------------------------------------"     

    sum_values = Enum.reduce([1,2,3,4,5,6], fn(n, sum) -> n + sum end)
    IO.puts sum_values
    
    IO.puts "-------------------------------------------------------"     

    IO.inspect Enum.uniq([1,2,3,4,5,6,1,4,6])
    
    IO.puts "-------------------------------------------------------"     

  end

  def display_list([head|tail]) do
    IO.puts(head)
    display_list(tail)
  end
  
  def display_list([]), do: nil

end
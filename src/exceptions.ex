# cd("C:\\Users\\jdorr\\Desktop\\Dev\\ElixirDump\\src")
# c("exceptions.ex")
# M.main

defmodule M do
  def main do
    enums_stuff()
  end
  
  def enums_stuff() do  
    
    err = try do
      5 / 1
    rescue
      ArithmeticError -> "Divide by zero!"      
    end
    
    IO.puts err

  end
end
# cd("C:\\Users\\jdorr\\Desktop\\Dev\\ElixirDump\\src")
# c("variables.ex")
# M.main

defmodule M do
  def main do
    data_stuff()
  end
  
  def data_stuff do
    some_integer = 1234
    IO.puts "An integer might be #{some_integer}"
    # output the integer    
    IO.puts "But is it an integer? #{is_integer(some_integer)}"
    # true

    some_float = 123.45
    IO.puts "A float might be #{some_float}"
    # output the float    
    IO.puts "But is it a float? #{is_float(some_float)}"
    # true

    some_atom = :goat
    # atoms are preceeded by colon (:)
    IO.puts "An atom might be #{some_atom}"
    # output the atom    
    IO.puts "But is it an atom? #{is_atom(some_atom)}"
    # true
    
    
  end
end
# cd("C:\\Users\\jdorr\\Desktop\\Dev\\ElixirDump\\src")
# c("tuples.ex")
# M.main

defmodule M do
  def main do
    tuples_stuff()
  end
  
  def tuples_stuff do  
    person1 = {:some_atom, 38, 3.1415}
    
    if is_tuple(person1) do
      IO.puts "It's a tuple!"
      person2 = Tuple.append(person1, 1234)
      
      IO.puts "Size is #{tuple_size(person2)}"
      
      IO.puts "1st: #{elem(person2, 0)}"
      IO.puts "2nd: #{elem(person2, 1)}"
      IO.puts "3rd: #{elem(person2, 2)}"
      IO.puts "4th: #{elem(person2, 3)}"
      
      person3 = Tuple.delete_at(person2, 0)
      IO.puts "now 1st: #{elem(person3, 0)}"
      
      person4 = Tuple.insert_at(person3, 0, :bob)
      IO.puts "now 1st: #{elem(person4, 0)}"
      
      many_zeros = Tuple.duplicate(0, 5)
      IO.puts "1st: #{elem(many_zeros, 0)}"
      IO.puts "5th: #{elem(many_zeros, 4)}"
      
      {a, b, c, d, e} = many_zeros
      IO.puts "a: #{a}"
      IO.puts "b: #{b}"
      IO.puts "c: #{c}"
      IO.puts "d: #{d}"
      IO.puts "e: #{e}"
      
    end
  end
end
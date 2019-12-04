# cd("C:\\Users\\jdorr\\Desktop\\Dev\\ElixirDump\\src")
# c("maps.ex")
# M.main

defmodule M do
  def main do
    maps_stuff()
  end
  
  def maps_stuff do  
    capitals = %{"england" => "london",
                 "france" => "paris",
                 "berlin" => "germany"}
    IO.puts "capital of england is #{capitals["england"]}"
    
    IO.puts "----"     
    atom_capitals = %{england: "london",
                      france: "paris",
                      berlin: "germany"}
                      
    IO.puts "capital of england is #{atom_capitals.england}"

    new_capitals = Dict.put_new(capitals, "spain", "madrid")
    
    new_atom_capitals = Dict.put_new(atom_capitals, :spain, "madrid") % remember to preceed the atom name with colon  (:)
  end
end
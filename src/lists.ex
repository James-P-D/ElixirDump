# cd("C:\\Users\\jdorr\\Desktop\\Dev\\ElixirDump\\src")
# c("lists.ex")
# M.main

defmodule M do
  def main do
    lists_stuff()
  end
  
  def lists_stuff do  
    list1 = [1, 2, 3]
    list2 = [4, 5, 6]
    list3 = list1 ++ list2
    
    list4 = list3 -- list1
    
    IO.puts 5 in list4
    
    [head | tail] = list3
    IO.puts "Head: #{head}" # outputs "1"
    IO.puts "Tail: #{tail}" # outputs "^B^C^D^E^F"
    IO.write "Tail: "
    IO.inspect tail

    IO.puts "-------------------------------------------------------" 

    IO.puts "First inspect on 65, 66, 67"
    IO.inspect [65, 66, 67]                        # outputs "ABC"
    IO.puts "Second inspect on 65, 66, 67"
    IO.inspect [65, 66, 67], char_lists: :as_lists # outputs "[65, 66, 67]"

    IO.puts "-------------------------------------------------------" 
    
    Enum.each list3, fn item ->
      IO.puts item
    end

    IO.puts "-------------------------------------------------------" 

    display_list(list3)
    
    IO.puts "-------------------------------------------------------" 

    display_list(List.delete(list3, 4))

    IO.puts "-------------------------------------------------------" 

    display_list(List.delete_at(list3, 1))

    IO.puts "-------------------------------------------------------" 

    display_list(List.insert_at(list3, 1, 12.34))

    IO.puts "-------------------------------------------------------" 

    IO.puts List.first(list3)
    IO.puts List.last(list3)
    
    IO.puts "-------------------------------------------------------" 

    tuple_list = [name: "James", age: 38] # Remember the spaces after the colon (:)
  end
  
  def display_list([head|tail]) do
    IO.puts(head)
    display_list(tail)
  end
  
  def display_list([]), do: nil
  
end
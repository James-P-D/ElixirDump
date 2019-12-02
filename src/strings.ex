# cd("C:\\Users\\jdorr\\Desktop\\Dev\\ElixirDump\\src")
# c("strings.ex")
# M.main

defmodule M do
  def main do
    string_stuff()
  end
  
  def string_stuff do 
    some_string = "blah blah blah"
    IO.puts "length is #{String.length(some_string)}"
    
    # We can concatonate
    concat_string = some_string <> "!!!"
    IO.puts "concatted it is is #{concat_string}"
    
    # are value and data types equal?
    IO.puts "But are they equal? #{"egg"==="EGG"}" # false
    IO.puts "But are they equal? #{"egg"==="egg"}" # true
    
    # We can check for substrings
    IO.puts "Does it contain blah? #{String.contains?(some_string, "blah")}"
    
    # We can get the first character
    IO.puts "First character is #{String.first(some_string)}"
    
    # We can get the Nth (zero-indexed) character
    IO.puts "Second character is #{String.at(some_string, 1)}"
    
    # We can get substrings (starting at 2 (zero-indexed again, so 3rd character) and get next 6 chars)
    IO.puts "Substring: #{String.slice(some_string, 2, 6)}"
    
    # We can split a string into a list
    IO.inspect String.split(some_string, " ")
    
    # We can reverse a string
    IO.puts String.reverse(some_string)

    # We can make it uppercase
    IO.puts String.upcase(some_string)

    # We can make it lowercase
    IO.puts String.downcase(some_string)
    
    # We can capitalise the first letter
    IO.puts String.capitalize(some_string)

    # And we can pipe a value into puts
    4 * 10 |> IO.puts    
  end
end
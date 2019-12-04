# cd("C:\\Users\\jdorr\\Desktop\\Dev\\ElixirDump\\src")
# c("decisions.ex")
# M.main

defmodule M do
  def main do
    decisions_stuff()
  end
  
  def decisions_stuff do  
    age = 28
    
    if age >= 18 do
      IO.puts "Can vote"
    else
      IO.puts "Can't vote"
    end
    
    unless age === 18 do       # Yuck!
      IO.puts "you're not 18"
    else
      IO.puts "you are 18"
    end
    
    cond do
      age <= 5 -> IO.puts "preschool"
      age <= 8 -> IO.puts "infants"
      age <= 11 -> IO.puts "primary"
      age <= 18 -> IO.puts "secondary"
      age <= 21 -> IO.puts "university"
      true -> IO.puts "work"            # Use 'true' for 'default' condition. *NOT* '_' as some tutorials suggest!
    end
    
    case age do
      18 -> IO.puts "Precisely 18"
      _ -> IO.puts "Some other age"
    end
    
    IO.puts "Tenery : #{if age > 18, do: "You can vote!", else: "can't vote"}"    
  end
end
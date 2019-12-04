# cd("C:\\Users\\jdorr\\Desktop\\Dev\\ElixirDump\\src")
# c("hello.ex")
# M.main
# What is your name? James
# Hello James
# :ok
# iex(4)> 

defmodule M do
  def main do
    name = IO.gets("What is your name? ") |> String.trim
    # IO.puts always adds a new line
    IO.puts "Hello #{name}"
    
    # IO.write *doesn't* add a new line
    IO.write "foo"
    IO.write "bar"
  end
end
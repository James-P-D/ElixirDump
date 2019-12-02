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
    IO.puts "Hello #{name}"
  end
end
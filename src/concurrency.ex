# cd("C:\\Users\\jdorr\\Desktop\\Dev\\ElixirDump\\src")
# c("concurrency.ex")
# M.main

defmodule M do
  def main do
    concurrency_stuff()
  end
  
  def concurrency_stuff() do  
    
    spawn (fn() -> loop(10, 1) end)
    spawn (fn() -> loop(20, 10) end)
    
    send(self(), {:french, "bob"})
    send(self(), {:chinese, "bob"})
    
    receive do
      {:german, name} -> IO.puts "Guten tag #{name}"
      {:french, name} -> IO.puts "Bonjour #{name}"
      {_, name} -> IO.puts "Hello #{name}"
    after
      500 -> IO.puts "TIMEOUT!"
    end
  end
  
  def loop(0, _), do: nil
  def loop(x, y) do
    if x < y do
      loop(0, y)
    else
      IO.puts x
      loop(x - 1, y)
    end
  end

end
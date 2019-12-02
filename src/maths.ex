# cd("C:\\Users\\jdorr\\Desktop\\Dev\\ElixirDump\\src")
# c("maths.ex")
# M.main

defmodule M do
  def main do
    maths_stuff()
  end
  
  def maths_stuff do  
    IO.puts "10 + 9 = #{10 + 9}"
    IO.puts "10 - 9 = #{10 - 9}"
    IO.puts "10 * 9 = #{10 * 9}"
    IO.puts "10 / 9 = #{10 / 9}"
    IO.puts "10 div 9 = #{div(10, 9)}"
    IO.puts "10 rem 9 = #{rem(10, 9)}"
    
    # sin, cos, tan, log, e, sqrt, etc. etc. blah. blah. blah
  end
end
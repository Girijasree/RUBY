class Calci
 
  def add(a,b)
     @x=a+b
     return @x
  end
  def mul(a,b)
    @x=a*b
    return @x
  end
  def div(a,b)
   @x=a/b
   return @x
 end
def sub(a,b)
  @x=a-b
  return @x
 end
end
c=Calci.new
begin
puts "enter the value of first number"
x=gets.chomp.to_i
puts "enter the value of second number"
y=gets.chomp.to_i
puts "enter your option : 1.add 2.sub 3.div 4.mul "
a=gets.chomp.to_i

case a
when 1 then
puts c.add(x,y)
when 2 then 
puts c.sub(x,y)
when 3 then
puts c.div(x,y)
when 4 then
puts c.mul(x,y)
else 
puts "please enter valid number from 1 to 4"
end
puts "enter 1 to continue again or 0 to exit"
y=gets.chomp.to_i
end until(y==0)

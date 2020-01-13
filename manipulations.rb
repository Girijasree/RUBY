a=[]
f=true

while(f)
	puts "1. Add value
2. minimum 3. maximum 4.sum 5. average 6. search 7.display 8.
delete value by index 9. delete value 10. exit"
	c=gets.chomp.to_i
	case c
		when 1
				puts "enter the element to be added"
				b=gets.chomp.to_i
				a.push(b)
				puts a
		when 2
			puts a.min()
		when 3
				puts a.max()
		when 4
			puts a.sum()
		when 5
			puts a.avg()
		when 6
			puts "element to be searched"
			b=gets.chomp.to_i
			if(a.include?(b))
				puts "element at index #{ a.index(b)}"
			end
			
		when 7
			puts a
		when 8
			puts "enter the element index to be deleted"
			b=gets.chomp.to_i
			a.delete_at(b)
		when 9
			puts "enter the value to bbe deleted"
			b=gets.chomp.to_i
			a.delete(b)
		when 10
			f=false
end
			
end

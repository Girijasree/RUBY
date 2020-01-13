f=true
a=[]
while(f)
	puts "1. Add mail id 2. display all 3. display only edu mail ids 4. search 5. delete mail id by value 6. display unique domains of all mail ids 7. count mail ids in given domain 8. exit"
   c=gets.chomp.to_i
case c
 	when 1
		puts "enter mail id"
		b=gets.chomp 
		puts b   
		a.push(b)
	when 2
		puts a
	when 3
		a.each do |s|
			b=s.split('.')
			if b.last=="edu"
				puts s
			end
		end
		#b=a.select{|s|
	when 4
		puts "enter the mail to be serached"
		b=gets.chomp
		puts a.find(b)
	when 5
		puts "enter the mail to be serached"
		b=gets.chomp
		a.delete(b)
	when 6
		c=[]
		a.each do |s|
			b=s.split('.')
			if !c.include?(b.last)
				c.push(b.last)
			end
		end
		c.each do |h|
			a.each do |s|
			  b=s.split('.')
			  if(h==b.last)
				puts s
			  end
			end
		end
	when 7
	c=[]
		a.each do |s|
			b=s.split('.')
			if !c.include?(b.last)
				c.push(b.last)
			end
		end
		c.each do |h|
			count=0
			a.each do |s|
			  b=s.split('.')
			  if(h==b.last)
				count+=1
			  end
			end
				puts h,count
		end
	when 8
		f=false
		
end
end					

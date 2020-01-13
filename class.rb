class Student
  public
	attr_accessor :rollno, :name,:state, :branch, :cgpa
	def initialize(n,r,s,b,c)
		@name=n
		@rollno=r
		@state=s
		@branch=b
		@cgpa=c
	end
def display
	puts "name:#{@name}\n rollno:#{@rollno}\n state:#{@state}\n branch:#{@branch}\n cgpa:#{@cgpa}"
end
end
a=[]
f=true
r=1
#stu=Student.new()
while(f)
	puts "1. Add new student 2. display all students 3. display student by branch 4. display
students by state 5. Search students by roll number 6. search by part of the name, 7.
delete by roll number 8. count and display number of students by state 9. count and
display number of students by branch 10. exit"
	c=gets.chomp.to_i
	case c
		when 1
			
			puts "enter the name state branch cgpa"
			name=gets.chomp
			state=gets.chomp
			branch=gets.chomp
			cgpa=gets.chomp
			rollno=r
			r+=1
			st=Student.new(name,rollno,state,branch,cgpa)
			a<< st

		when 2
			a.each {|i| i.display}
		when 3
			puts "enter the brnch to display"
			b=gets.chomp
			a.each {|i| i.display if i.branch==b}
 		when 4
			puts "enter the state to display"
			b=gets.chomp
			a.each {|i| i.display if i.state==b}
		when 5
				puts "enter the rollno to display"
			b=gets.chomp.to_i
			a.each {|i| i.display if i.rollno==b}
		when 6
			puts "enter the name to display"
			b=gets.chomp
			a.each {|i| i.display if i.name.include?(b)}
		when 7
				
			
				puts "enter the rollno to display"
			b=gets.chomp.to_i
			a.each {|i| a.delete(i) if i.rollno==b}
		when 8
				sta=[]
				
			a.each do |i|
				if !sta.include?(i.state)
				 sta.push(i.state) 
			        
				end
			end
			puts sta
			sta.each do |t|
				count=0
				 a.each do |i|
					 if i.state==t
						 i.display
						
						count+=1
					end
					
				end
     			puts count
			end
		when 9
			
				br=[]
				count=0
			a.each {|i| br.push(i.branch) if !br.include?(i.branch)}
			puts br
			br.each do |t|
				count=0
				 a.each do |i|
				 if i.branch==t
						i.display
						count+=1
				end
				end
			puts count 
		end		
		when 10
			f=false
	end
end



# print ["Hello world"] 
# p (1..100).to_a
# if 3 
# 	then 
# 	print "mined"
# 	end


x=0
101.times do 
if (x % 3 == 0 && x % 5 == 0)
	p "mindmines"
elsif x % 3 == 0 
	p "mined"
elsif x % 5 == 0
	p "minds"
else 
	p x 
	end
	x+=1
end

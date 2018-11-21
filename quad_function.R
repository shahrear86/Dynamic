 #created by : shahrear
 #student.eco86@gmail.com
 
 
function <- function(x,y,p) 
 {
  (x+y)^p
 }
x <- seq(0,100) 
y <- seq(0,100)
p= 2
z = outer(x,y,function)
boxplot(z)
hist(z)
persp(x,y,z)
contour(x,y,z)

# by considering some random z named check_new_z 
check_new_z = rnorm(101) 
boxplot(check_new_z)
hist(check_new_z)
plot(x,check_new_z)



function1 <- function(x,y,p) 
{
 z1 = (x+y)^p
 return(z1)
}
z1=function1(x,y,2)
boxplot(z1) 
plot(x,z1)
hist(z1)





 
 
 








 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  

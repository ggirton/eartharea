from decimal import *

PI= Decimal('3.1415926535897931')
RADIUS= Decimal('6372795.477598')	#Earth radius in meters
RADIUS1 = RADIUS+1

# Formula for volume is four-thirds pi R cubed

m1 = 4 * PI / 3
V= m1 * RADIUS * RADIUS * RADIUS
V1= m1 * RADIUS1 * RADIUS1 * RADIUS1

print (V ," cubic meters")
area = V1-V
print (area , " square meters")
quadrillion = 1000 * 1000 * 1000 * 1000 
print(quadrillion)
print (area/quadrillion, "quadrillion square meters")
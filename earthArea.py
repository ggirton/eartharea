from decimal import *

PI= Decimal('3.1415926535897931')
RADIUS= Decimal('6372795.477598')
RADIUS1 = RADIUS+1

m1 = 4 * PI / 3
V= m1 * RADIUS * RADIUS * RADIUS
V1= m1 * RADIUS1 * RADIUS1 * RADIUS1

print V ," cubic meters"
area = V1-V
print area , " square meters"

<#

        .SYNOPSIS
        Calculate Earth Area

        .DESCRIPTION
        Does it 2 diffgerent ways

        .Functionality
        Most charts of earth facts do not show the surface area.  
        Why not?  Probably because it can be easily calculated.
        But ... which units to choose and how accurate to be?

#>


$EarthVMRKM = 6371.000   # Volumetric mean radius in kilometers
# Surface area sphere 4 PI R squared
$EarthSurfaceAreaKM = 4 * [math]::PI * [math]::Pow($EarthVMRKM,2)

Write-Output "$EarthSurfaceAreaKM square kilometers"  
Write-Output ("{0:N1} square kilometers"  -f ($EarthSurfaceAreaKM))
Write-Output "{0:N1} square kilometers"  -f ($EarthSurfaceAreaKM)
Throw "{0:N1} square kilometers"  -f ($EarthSurfaceAreaKM)
# Throw "{0:N} square kilometers"  -f $EarthSurfaceAreaKM 
# What would it be if it were 1 meter higher?
Write-Output "Altitude 1 meter: {0:N}" -f (4 * [math]::PI * [math]::Pow(6372,2))

# Throw "foofoo"




$EarthRadiusMeters= 6372795.477598	#Earth radius in  meters
$EarthAltitude1Meter = $EarthRadiusMeters + 1

# Sanity check


$earthVolumeFloat = 4/3 * [MATH]::pi * [Math]::pow($EarthRadiusMeters,3)
$upOneMeter = 4/3 * [MATH]::pi * [Math]::pow($EarthAltitude1Meter,3) 
write-output $earthVolumeFloat
# Formula for volume is four-thirds pi R cubed
<# $SphereVolumeFormula = 4 * [MATH]::pi / 3.0 #>


$EarthSurfaceFloat = $upOneMeter - $earthVolumeFloat

Throw "{0:N1} square meters"  -f $EarthSurfaceFloat 

$QUADRILLION = 1000 * 1000 * 1000 * 1000 * 1000

$quadrillion -eq [math]::Pow(10,15)


Write-Output $EarthSurfaceFloat / $QUADRILLION


Write-Host "$($earthSurfaceArea / $QUADRILLION) quadrillion square meters"

break


<# now big int #>
$V= 4 * [Bigint] $RADIUS * [Bigint] $RADIUS * [Bigint] $RADIUS * [double] $PI
write-output "big" $V
[bigint] $Vprime= 4 * [Bigint] $RADIUS * [Bigint] $RADIUS * [Bigint] $RADIUS * [double] [MATH]::pi
write-output "prime" $Vprime




$V1=  4 * [Bigint] $RADIUS1 * [Bigint] $RADIUS1 * [Bigint] $RADIUS1 * [double] $PI

echo "$V  cubic meters"
$earthSurfaceArea = $V1-$V
Write-Host "$earthSurfaceArea  square meters"
$QUADRILLION = 1000 * 1000 * 1000 * 1000 
echo $QUADRILLION
Write-Host "$earthSurfaceArea / $QUADRILLION quadrillion square meters"

$earthSurfaceArea / $QUADRILLION

[double]$earthSurfaceArea / [double]$QUADRILLION


echo "flot"
$EarthAreaFloat / [double]$QUADRILLION


## Big Int
$RADIUS= 6372795.477598n	#Earth radius in big meters
$RADIUS1 = $RADIUS + 1

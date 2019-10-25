/// @description projectile_Motion(x,speed,angle,startx,starty,gravity) 
/// @param x
/// @param speed
/// @param angle
/// @param startx
/// @param starty
/// @param gravity

var xx = argument0 ; 
var spd = argument1 ; 
var ang = degtorad(argument2) ; 
var x0 = argument3 ; 
var y0 = argument4 ; 
var gr = argument5 ; 

/*
a --> acceleration , v - velocity 
a(y) = -g ==> vy(t) = -g * t + vy0 ==> y(t) = (-g/2) * t² + vy0 * t + y0
a(x) = 0 ==> vx = Const = vx0 ==> x(t) = vx0 * t + x0

vx0 == speed * cos(angle) 
vy0 == speed * sin(angle)

t = ((x - x0 ) / (speed * cos(angle))

y(x)  = -(g/2) * ( (x - xx0)² / (spd² * cos²(ang))) + tan(angle) * ( x- x0) + y0

*/
if (ang > 270 ) {
    ang = ang ; 
}
else
if (ang > 90){
    ang -=180 ; 
}
else
if (ang > 180){
    ang -= 180; 
}



var posY = 0 ; 
if ( cos(ang) != 0 && spd != 0){       
    posY = -(gr/2) * ( power(xx-x0,2) / (power(spd,2) * power(cos(ang),2)) ) + tan(ang) * (xx-x0) + y0 ; 
}else{
    posY =  0 ; 
}

return posY ; 


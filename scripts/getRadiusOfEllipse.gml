///getRadiusOfEllipse(width, height, ang):
var a = argument[ 0 ] / 2;
var b = argument[ 1 ] / 2;
var angle = degtorad(argument[ 2 ]);
return a * b / sqrt(power(a, 2) * power(sin(angle), 2) + power(b, 2) * power(cos(angle), 2));

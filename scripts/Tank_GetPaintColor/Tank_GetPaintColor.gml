var PaintID = argument[0]

switch (PaintID) {
	case 1 : return c_white; //TW
	case 2 : return make_color_rgb(12, 12, 12) // Negro
	case 3 : return make_color_rgb(150, 150, 150) // Gris
	case 4 : return make_color_rgb(255, 165, 0) // Naranja
	case 5 : return make_color_rgb(255, 105, 180) // Rosa
	case 6 : return make_color_rgb(128, 0, 128) // Morado
	case 7 : return make_color_rgb(244, 196, 48) // Amarillo
	case 8 : return make_color_rgb(50, 205, 50) // Lime
	case 9 : return make_color_rgb(34, 139, 34) // ForestGreen
	case 10 : return make_color_rgb(0, 71, 171) // Cobalto
	case 11 : return make_color_rgb(135, 206, 235) // Azul Cielo
	case 12 : return make_color_rgb(138, 54, 15) // Marron
	case 13 : return make_color_rgb(220, 20, 60) // Carmesí
}
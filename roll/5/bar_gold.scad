coin_radius = 22 / 2;
coin_thickness = 1.55;
coin_numbers = 50;


coin_height = coin_thickness * coin_numbers;
cylinder(h = coin_height, r = coin_radius, center = false);

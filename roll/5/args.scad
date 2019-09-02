// coin
coin_radius = 22 / 2;
coin_thickness = 1.55;
coin_numbers = 5;
coin_height = coin_thickness * coin_numbers;

// case
case_radius = 30 / 2;
case_height = 94/5;
key_thickness = 2.5;

// shovel
shovel_coin_numbers = 5;
shovel_bottom = 2;

// tolerances
coin_tolerance = 1;
case_tolerance = 4;
filer_tolerance = 1;
key_tolerance = 1;

// chember
case_hole_radius = case_radius + case_tolerance / 2;
case_hole_height = case_height + case_tolerance;
chember_radius = case_hole_radius + coin_thickness * 2;

// filer
filer_radius = case_radius + filer_tolerance;
filer_height = case_height;

filer_hole_radius = coin_radius + filer_tolerance;


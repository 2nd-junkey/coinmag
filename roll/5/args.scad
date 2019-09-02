// coin
coin_radius = 22 / 2;
coin_thickness = 1.55;
coin_numbers = 50;
coin_height = coin_thickness * coin_numbers;


// case
coin_tolerance = 1;
coin_insert_radius = coin_radius + coin_tolerance / 2;

case_radius = 30 / 2;
case_height = 94;


// chember
case_tolerance = 4;
case_hole_radius = case_radius + case_tolerance / 2;

case_hole_height = case_height + case_tolerance;
chember_radius = case_hole_radius + coin_thickness*2;


// filer
filer_tolerance = 1;
filer_hole_radius = coin_radius + filer_tolerance;

filer_radius = case_radius;
filer_height = case_height;


// key
key_tolerance = 1;
key_width = case_radius + key_tolerance / 2;

key_thickness = coin_thickness + key_tolerance;
key_radius = key_width + coin_thickness*2;


// shovel
shovel_coin_numbers = 5;
shovel_radius = 30 / 2;
shovel_bottom = 2;

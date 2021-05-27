// base frame
frame_thickness = 1.5;
frame_width = 6;

// reinforcement on base frame
frame_reinforcement_thickness = 1.5;
frame_reinforcement_width = 1.5;

// pillars to add a board
pillar_diameter = frame_width;
pillar_height = 5;

// pins to attach the board
pin_diameter = 1.8;
pin_height = 3;

module frame_border(size) {
	square([size[0] + 1, size[1] + 1], center=true);
}

module frame_outline(size, width) {
	difference() {
		offset(r=width / 2, $fn=32) {
			frame_border(size);
		}

		offset(r=-width / 2, $fn=32) {
			frame_border(size);
		}
	}
}

module pillar() {
	cylinder(d=pillar_diameter, h=pillar_height, $fn=32);

	translate([0, 0, pillar_height]) {
		cylinder(d=pin_diameter, h=pin_height, $fn=32);
	}
}

module pillars(size) {
	x = size[0];
	y = size[1];

	translate([x / 2, y / 2, 0]) {
		pillar();
	}

	translate([-(x / 2), y / 2, 0]) {
		pillar();
	}

	translate([x / 2, -(y / 2), 0]) {
		pillar();
	}

	translate([-(x / 2), -(y / 2), 0]) {
		pillar();
	}
}

module frame(size) {
	pillars(size);

	linear_extrude(frame_thickness) {
		frame_outline(size, frame_width);
	}
	linear_extrude(pillar_height - frame_reinforcement_thickness) {
		frame_outline(size, frame_reinforcement_width);
	}
}

frame([58, 34]);

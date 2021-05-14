include </Users/william/projects/openscad/nutsnbolts/cyl_head_bolt.scad>

length = 62;
radius = 2;
width = 38;
hole_diameter = 2.01;

// Actual dimensions (because of the minkowski transformation).
base_length = length - (2 * radius);
base_width = width - (2 * radius);

module base() {
  difference() {
    // main area
    minkowski() {
      square([base_length, base_width], center=true);
      circle(r=radius, $fn=30);
    }

    // holes
    translate([base_length / 2, base_width / 2])
      circle(d=hole_diameter, $fn=30);
    translate([-base_length / 2, base_width / 2])
      circle(d=hole_diameter, $fn=30);
    translate([-base_length / 2, -base_width / 2])
      circle(d=hole_diameter, $fn=30);
    translate([base_length / 2, -base_width / 2])
      circle(d=hole_diameter, $fn=30);
  }
}

difference() {
  h = 3;
  linear_extrude(height=h)
    base();

  translate([base_length / 2, base_width / 2, 1.5])
    hole_through("M2.5", l=2);
  translate([-base_length / 2, base_width / 2, 1.5])
    hole_through("M2.5", l=2);
  translate([-base_length / 2, -base_width / 2, 1.5])
    hole_through("M2.5", l=2);
  translate([base_length / 2, -base_width / 2, 1.5])
    hole_through("M2.5", l=2);
}

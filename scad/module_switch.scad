//all units are in mm
//since datasheet units are in inches,
//there's a simple convertion function in()
//TODO:
//tolerance
//better names
//1u = 0,75"
//sets and offset in z axis for switch mounting cutouts
//0.1 is recommended
z_offset = 0.1;
switch_cutout_type = 0;
//simple conversion fuction inch to milimeters
function in(mm) = mm*25.4;
function u(unit) = unit*0.75;
//
module mirror_copy(v = [1, 0, 0])
{
    children();
    mirror(v) children();
}
//EXtendedCUBE
//allows to choose an axis on which the cube will be centered
module excube(a = [1,1,1],b = [0,0,0])
{
    translate([-b[0]*a[0]/2,-b[1]*a[1]/2,-b[2]*a[2]/2])
        cube(a);
}
//simple line
module line(start, end, thickness = 1) {
    hull() {
        translate(start) sphere(thickness);
        translate(end) sphere(thickness);
    }
}
//definition of single switch cutout
//with small cutout for switch's latch (maybe it could be smaller?)
//two types
module switch_part()
{
    if(switch_cutout_type)
        translate([0,0,-4])
            union()
            {
                excube([in(0.55),in(0.55),4], [1,1,0]);
                excube([5,16,2.5+z_offset], [1,1,0]);
            }
    else
        translate([0,0,-4])
            union()
            {
                excube([in(0.55),in(0.55),4], [1,1,0]);
                translate([0,0,1+z_offset])
                    excube([5,16,1.5], [1,1,0]);
            }
    
}
//definition of single cutout for stabiliser
//also with small cutout for switch's latch and bar section
module stabiliser_part()
{
    translate([0,0,-4])
        union()
        {
            linear_extrude(4)
                mirror_copy()
                    polygon(points=[
                        [in(0),-in(0.26+0.046)],
                        [-in(0.06),-in(0.26+0.046)],
                        [-in(0.06),-in(0.26)],
                        [-in(0.131),-in(0.26)],
                        [-in(0.131),-in(0.02)],
                        [-in(0.166),-in(0.02)],
                        [-in(0.166),in(0.11-0.02)],
                        [-in(0.131),in(0.11-0.02)],
                        [-in(0.131),in(0.224)],
                        [in(0),in(0.224)]]);
            translate([0,in(0.224),0])
                excube([2,2,2.5+z_offset], [1,1,0]);
            translate([0,-in(0.26)-in(0.14),0])
                excube([in(0.262),in(0.15),2.5+z_offset], [1,0,0]);
        }
}
//cutout definition for the rest of the stabiliser
module stabiliser_cutout(a = 0.94)
{
    union()
    {
        translate([0,0,-4])
            excube([in(a),in(0.2),4],[1,1,0]);
        translate([0,-in(0.26)-in(0.14),-4])
            excube([in(a),in(0.26)+in(0.14),2.5+z_offset],[1,0,0]);
    }
}
//------------------------------------------------
//switch assemblers

//accepts A diemension (distance between 
//centers of the stabiliser moutings)
module stabiliser(a = 0.94)
{
    mirror_copy()
        translate([in(a/2),0,0])
            stabiliser_part();
    stabiliser_cutout(a);
}
//still in progress, but should work for siple keys 
//1u , 2-2,75u , 6,25u spacebar
module switch(size = 1)
{
    //single switch
    if(size == 1)
    {
        switch_part();
    }
    else
    //there should be a better way
    if(size == 2 || size == 2.25 || size == 2.5 || size == 2.75)
    {
        union()
        {
            switch_part();
            stabiliser();
        }
    }
    //here too
    else
    {
        //size = (0.75*size)-0.75;
        //size = u(size)-u(1);
        //so far should work for 6.25u spacebar
        size = u(size-1);
        union()
        {
            switch_part();
            stabiliser(size);
        }
    }
}

module switch_asm(x, y, , size = 1, rotation = 0)
{
    translate([in(u(x)), in(u(y)), 0])
        rotate(a = rotation, v = [0, 0, 1])
            switch(size);
}
//test union, remove * to see
union()
{
    translate([0, 0, 0])
        switch();
    translate([0, in(u(1)), 0])
        switch(2);
    translate([0, in(u(2)), 0])
        switch(6.25);
    translate([0, in(u(3)), 0])
        stabiliser();
}

//switch_asm(0.5,0.5,2,90);

/*just some scrap to remove later
module switch_constructor(type)
    if(type == 6.25)
    {
        union()
        {
            switch();
            mirror_copy()
            translate([in(3.9375/2),0,0])
                stabiliser();
            stabiliser_cutout(3.9375);
        }
    }
*/
use <module_switch.scad>;

difference()
{
    translate([-14.2875,-40,-4])
    excube([85.725,100,4],[0,1,0]);
union(){
for (a=[0:3])
{   
    for (i=[0:2])
    {
        translate([(i*0.75*25.4),(-a*0.75*25.4),0])  
            switch(1);
    }
}
translate([(3*in(0.75)),0,0])
    switch(1);
translate([(3*in(0.75)),-3.5*in(0.75),0])
    rotate(a=-90)
        switch(2);
translate([(3*in(0.75)),-1.5*in(0.75),0])
    rotate(a=-90)
        switch(2);
translate([(0.5*in(0.75)),-4*in(0.75),0])
    rotate(a=180)
        switch(2);
translate([(2*in(0.75)),-4*in(0.75),0])
        switch(1);
}}

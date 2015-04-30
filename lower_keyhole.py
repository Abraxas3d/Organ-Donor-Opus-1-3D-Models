#/********************************/
#/*                              */
#/*    Makes 3D models of        */
#/*  Organ Donor Keyhole         */
#/*                              */
#/********************************/


#/********************************/
#/*                              */
#/*    Setup Variables           */
#/* Enter board and machine size */
#/* and any other parameters     */
#/* necessary for the design.    */
#/*                              */
#/********************************/
#//The intended laser cutters are as follows.
#//the 80W laser has a 600x900mm bed
#//the 100W laser has a 900x1200mm bed

#//everything is in millimeters here, 
#//so remember to scale up to inches in your software

#//the thickness of the board being cut in inches
board_thickness = 0.5

#//Allow for the width of the cutting tool in inches
kerf_margin = 25.4/25.4

#//Assembly height defined in inches
assembly_height = 6

#//Length allowed for grinding upper lip to an angle
mouth_allowance = 2

#//the width left-to-right of the board being cut
board_width_spec = 96*25.4 
#//converted from inches

#//the length top-to-bottom of the board being cut
board_length_spec = 48*25.4
#//converted from inches

#//the width left-to-right of the machine used
machine_width_spec = 900

#//the length top-to-bottom of machine used
machine_length_spec = 1200

#//is there a margin around the edge of the bed 
#//on the machine that can't be used? Enter that here.
machine_easement = 20

#//is there a margin around the edge of the bed 
#//on the machine that can't be used? Enter that here.
board_easement = 20

#//the width left-to-right of the machine used
machine_width = machine_width_spec - 2*machine_easement

#//the length top-to-bottom of machine used
machine_length = machine_length_spec - 2*machine_easement

#//the width left-to-right of the board used
board_width = board_width_spec - 2*board_easement

#//the length top-to-bottom of board used
board_length = board_length_spec - 2*board_easement



	#/********************************/
	#/*                              */
	#/* Setting up the Loop          */
	#/* open dimensions.txt for      */
	#/* reading. This has the        */
	#/* internal width, depth, and   */
	#/* length as a tab-delimited    */
	#/* text file.                   */
	#/* Open test_program.txt for    */
	#/* writing results.             */
	#/* Results are instructions     */
	#/* interpreted by Openscad.     */
	#/*                              */
	#/********************************/


previous_offset = 0
previous_width = 0
previous_depth = 0
previous_length = 0

rotoff = 0;
numpipes = 36;
#count = 36;
case_control = 0;

g = open('lower_keyhole.txt', 'w')
#//Make a support structure for the 36 pipes that are longer than 24"

#//make the circles pretty
print >>g, "$fn=30;"
#//angle of repose for the pipes. 0-90.
print >>g, "incline = 30;"
#//parameterized offset for pipe placement
print >>g, "rotoff = 0;"
#//number of pipes
print >>g, "pipes = 36;"


#//make the foot rest and toe rest
print >>g, "translate([0,0,(tan(incline))*(25.4*24)])"
print >>g, "difference()"
print >>g, "{"
print >>g, "//base of foot rest"
print >>g, "#cylinder(h = 25.4*1, r1 = 25.4*28, r2 = 25.4*28);"
print >>g, "//take out keyhole and center"
print >>g, "#rotate(a=45, v=[0,0,1]){"
print >>g, "cube(size=[25.4*48, 25.4*48, 25.4*1]);"
print >>g, "}"
print >>g, "#cylinder(h = 25.4*1, r1 = 25.4*24, r2 = 25.4*24);"
print >>g, "}"


with open('dimensions_lower.txt', 'rU') as f:
    for line in f:  #Line is a string
        #split the string on whitespace, return a list of numbers 
        # (as strings)
        numbers_str = line.split()
        #convert numbers to floats
        numbers_float = [float(x) for x in numbers_str]  #map(float,numbers_str) works too
		#now we have floats in an array. Indexed? Make the pipe drawing. 
	
	current_width = numbers_float[0]
	current_depth = numbers_float[1]
	current_length = numbers_float[2]
	
#	if count > 0:
		
	print numbers_float	
	previous_offset = previous_offset + previous_depth + kerf_margin



	if case_control == 0:
		#print >>g, "//count is equal to ",count,"."
		print >>g, "#rotate(a=(270 +",rotoff,"), v=[0,0,1]){"
		print >>g, "#rotate(a=-incline, v=[0,1,0]){"
		print >>g, "translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) "
		print >>g, "cube(size=[",current_length*25.4 + assembly_height*25.4,", ",(current_width + 2*board_thickness)*25.4,",",current_depth*25.4,"]);"
		print >>g, "}"
		print >>g, "}"		    
		case_control = case_control + 1;
		#count = count - 1;
		previous_width = current_width
		previous_depth = current_depth
	elif case_control == 1:
		#print >>g, "//count is equal to ",count,"."
		print >>g, "#rotate(a=(270 -",rotoff,"), v=[0,0,1]){"
		print >>g, "#rotate(a=-incline, v=[0,1,0]){"
		print >>g, "translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) "
		print >>g, "cube(size=[",current_length*25.4 + assembly_height*25.4,", ",(current_width + 2*board_thickness)*25.4,",",current_depth*25.4,"]);"
		print >>g, "}"
		print >>g, "}"
		case_control = case_control + 1;
		#count = count - 1;
		previous_width = current_width
		previous_depth = current_depth
	elif case_control == 2:
		#print >>g, "//count is equal to ",count,"."
		print >>g, "#rotate(a=(30 -",rotoff,"), v=[0,0,1]){"
		print >>g, "#rotate(a=-incline, v=[0,1,0]){"
		print >>g, "translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) "
		print >>g, "cube(size=[",current_length*25.4 + assembly_height*25.4,", ",(current_width + 2*board_thickness)*25.4,",",current_depth*25.4,"]);"
		print >>g, "}"
		print >>g, "}"
		case_control = case_control + 1;
		#count = count - 1;
		previous_width = current_width
		previous_depth = current_depth
	elif case_control == 3:
		#print >>g, "//count is equal to ",count,"."
		print >>g, "#rotate(a=(150 +",rotoff,"), v=[0,0,1]){"
		print >>g, "#rotate(a=-incline, v=[0,1,0]){"
		print >>g, "translate ([ ((25.4*24)/cos(incline)) , -25.4*2, 0]) "
		print >>g, "cube(size=[",current_length*25.4 + assembly_height*25.4,", ",(current_width + 2*board_thickness)*25.4,",",current_depth*25.4,"]);"
		print >>g, "}"
		print >>g, "}"
		case_control = 0;
		#count = count - 1;
		rotoff = rotoff + 270/numpipes
		previous_width = current_width
		previous_depth = current_depth
			
		
		
g.close()
f.close()






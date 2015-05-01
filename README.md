# Organ-Donor-Opus-1-3D-Models
Organ Donor Opus 1 3D Models and the files to create them. 

These files make a 3D model of Organ Donor Opus 1, as deployed at YouTopia 2014, Borrego Desert Festival 2014, 
STEAM Fest Balboa Park 2015, and San Diego County Fair 2015. 

The files are configurable, but the default values are the ones used for the deployments. 

dimensions_lower and dimensions_upper are the input data files for lower_keyhole.py and upper_keyhole.py, respectively. They contain raw dimensions of the pipes used for the Opus 1. lower_keyhole and upper_keyhole use these dimensions to make openscad commands that draw the pipes in 3D, using the Openscad 3D modeling program.

The dimensions are derived from the two spreadsheets, which contain the physics equations necessary to create pipe dimensinos. The spreadsheets are called pipescale-8ft.xls and pipescale-4ft.xls. These spreadsheets are based on the one obtained from Raphi Giangiulio's Homemade Pipe Organ webs site, at http://www.rwgiangiulio.com. 

After lower_keyhole.txt and upper_keyhole.txt are created, they can be pasted in to entire_keyhole_structure.scad. You may have to overwrite the previous sections dedicated to the pipes.

The entire_keyhole_structure.scad file also draws the windchest and the toe rests. Note that the angle of each set of pipes can be varied. 

In the deployments, the pipes rested on racks. Racks and other mechanisms of pipe support (aside from where they sit on the toe rest) are not part of the model because each change of angle would necessitate a new rack support system. 

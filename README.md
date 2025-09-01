# Mars Rover

Variations on the [Mars Rover](https://science.nasa.gov/planetary-science/programs/mars-exploration/rover-basics/) code kata to facilitate [moldable](https://moldabledevelopment.com/) and [example-driven development](https://arxiv.org/abs/2409.00514).

For more information on the Mars Rover missions see also [NASA's historical Mars Rover website](https://web.archive.org/web/20140528095656/http://marsrovers.nasa.gov/home/index.html) at The Internet Archive.
## Installation

```st
Metacello new
	repository: 'github://stormwatch/Mars-Rover-GT:main/src';
	baseline: 'MarsRoverGT';
	load
```
## Assignment
We are part of the team developing Mars remote exploration equipment at NASA. We have to develop the system that controls the Mars Rover, and a secondary system to obtain staellite images of the landing site and track the Rover's meanderings.
###Landing Site
The landing site is a plateau on Mars whose surface is perfectly flat.
### Position and orientation
We use points to position the Rover on the plateau, and a cardinal direction that indicates where it is facing. It always begins at an initial point (x,y) and points to one of the main four cardinal directions.
### Commands
Because Mars is very far away, we send commands to the rover packaged in a {{gtClass:String}} where each character represents a command.
#### Movement
##### Translation
###### *f* moves forward by one point
###### *b* moves backward by one point
##### Rotation
###### *l* rotates ninety degrees to the left
###### *r* rotates ninety degrees to the right
### Error Handling
Keep in mind that communication may be glitchy, and erroneous commands may arrive, in which case the remaining commands in the sequence are not expected to be processed further.
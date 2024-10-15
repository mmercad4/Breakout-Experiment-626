//Make weapon float up and down slighty
y += sin(i)*0.25
i+=0.15

if(not instance_exists(obj_player)){instance_destroy(self)}
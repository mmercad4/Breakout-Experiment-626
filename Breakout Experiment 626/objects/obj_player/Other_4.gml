/// @description Insert description here
// You can write your code in thi
//particle system
instance_particle_dust = instance_create_depth(x,y,depth,obj_Particles);
instance_particle_dust.set_depth(depth +1);
instance_particle_dust.set_sprite(spr_Particle_Dust, true, true, false);
instance_particle_dust.set_color_mix(c_white, c_ltgray);
instance_particle_dust.set_alpha(0,0.7,0);
instance_particle_dust.set_size(0.2,0.5);
instance_particle_dust.set_direction(80,100);
instance_particle_dust.set_orientation(0,360,1);
instance_particle_dust.set_life(30,90);
instance_particle_dust.set_speed(1,3,-0.5);
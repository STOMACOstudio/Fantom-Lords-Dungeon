/// @description Insert description here
// You can write your code in this editor

x = mouse_x;
y = mouse_y;

image_angle += 10;

tile = collision_point(mouse_x,mouse_y,oMap_0parent,false,true);
enemy = collision_point(mouse_x,mouse_y,oEnemy0_Father,false,true);
lord = collision_point(mouse_x,mouse_y,oLord0Parent,false,true);
trap = collision_point(mouse_x,mouse_y,oTrap0Father,false,true);

/*instance_create_layer(x+irandom_range(-8,8),y+irandom_range(-6,6),"VFX",oVFX_SpellCastSparkle);
/*instance_create_layer(x+irandom_range(-8,8),y+irandom_range(-6,6),"VFX",oVFX_SpellCastSparkle);
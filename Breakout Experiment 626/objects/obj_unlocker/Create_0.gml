sprite_index = sprite
i = 0
if weapon == obj_pistol and obj_player.pistol_unlocked == true { instance_destroy(self) }
if weapon == obj_shotgun and obj_player.shotgun_unlocked == true { instance_destroy(self) }
if weapon == obj_rpg and obj_player.rpg_unlocked == true { instance_destroy(self) }
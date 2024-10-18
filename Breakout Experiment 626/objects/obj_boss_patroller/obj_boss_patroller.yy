{
  "$GMObject":"",
  "%Name":"obj_boss_patroller",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":1,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_pistol_bullet","path":"objects/obj_pistol_bullet/obj_pistol_bullet.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":2,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_boss_patroller",
  "overriddenProperties":[
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"bullet_type","path":"objects/obj_enemy/obj_enemy.yy",},"resource":{"name":"obj_bullet_enemy","path":"objects/obj_bullet_enemy/obj_bullet_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"obj_bullet_enemy",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_enemy_patroller","path":"objects/obj_enemy_patroller/obj_enemy_patroller.yy",},"propertyId":{"name":"walk_path","path":"objects/obj_enemy_patroller/obj_enemy_patroller.yy",},"resource":{"name":"boss_path","path":"paths/boss_path/boss_path.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"boss_path",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"hp","path":"objects/obj_enemy/obj_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"5000",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"damage","path":"objects/obj_enemy/obj_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"2",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"shooting_delay","path":"objects/obj_enemy/obj_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"53",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"attack_range","path":"objects/obj_enemy/obj_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"500",},
  ],
  "parent":{
    "name":"Enemies",
    "path":"folders/Objects/Enemies.yy",
  },
  "parentObjectId":{
    "name":"obj_enemy_patroller",
    "path":"objects/obj_enemy_patroller/obj_enemy_patroller.yy",
  },
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_boss_idle",
    "path":"sprites/spr_boss_idle/spr_boss_idle.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}
{
  "spriteId": {
    "name": "cannon",
    "path": "sprites/cannon/cannon.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "oPausable",
    "path": "objects/oPausable/oPausable.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 0,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":false,"eventNum":2,"eventType":3,"collisionObjectId":null,"parent":{"name":"oCannon","path":"objects/oCannon/oCannon.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":2,"collisionObjectId":null,"parent":{"name":"oCannon","path":"objects/oCannon/oCannon.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":0,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"resourceVersion":"1.0","name":"axis","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"resourceVersion":"1.0","name":"hsp","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"resourceVersion":"1.0","name":"vsp","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"2","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"resourceVersion":"1.0","name":"mSpeed","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"1","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"resourceVersion":"1.0","name":"aSpeed","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"1","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"resourceVersion":"1.0","name":"multiplier","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"5","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"resourceVersion":"1.0","name":"bullet_speed","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"4","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"resourceVersion":"1.0","name":"firing_rate","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"resourceVersion":"1.0","name":"firing_angle","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":3,"value":"True","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"resourceVersion":"1.0","name":"activated","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":3,"value":"False","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"resourceVersion":"1.0","name":"wave_bullets","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy",
  },
  "resourceVersion": "1.0",
  "name": "oCannon",
  "tags": [],
  "resourceType": "GMObject",
}
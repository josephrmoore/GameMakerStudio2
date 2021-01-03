/// @description Insert description here
// You can write your code in this editor

var inst_consumer = instance_place(x, y, oConsumer);
if (inst_consumer != noone) {
  with (inst_consumer) {
	net_worth += 1;
  }
}

instance_destroy();
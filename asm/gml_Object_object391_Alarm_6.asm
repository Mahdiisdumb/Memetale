.localvar 0 arguments

:[0]
pushi.e 197
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 194
sub.i.v
pushbltn.v self.room_width
pushi.e 40
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 40
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm

:[end]
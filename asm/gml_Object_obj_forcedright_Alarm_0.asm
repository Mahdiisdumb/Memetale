.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i 1576.hspeed
pushi.e 0
pop.v.i 1576.image_index
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 2
pop.v.i self.t
pushi.e 998
conv.i.v
pushbltn.v self.room_height
pushi.e 40
sub.i.v
push.v 1576.x
pushi.e 34
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.dog1
pushi.e 999
conv.i.v
pushbltn.v self.room_height
pushi.e 40
sub.i.v
push.v 1576.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.dog2
pushi.e -1
push.v self.dog1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e -1
push.v self.dog2
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 142
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]
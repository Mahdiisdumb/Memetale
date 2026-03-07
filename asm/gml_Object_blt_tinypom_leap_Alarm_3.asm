.localvar 0 arguments

:[0]
pushi.e 4
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 744
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 744.x
push.v self.x
cmp.v.v LT
bf [3]

:[2]
push.v self.hspeed
push.d 0.4
sub.d.v
pop.v.v self.hspeed
b [4]

:[3]
push.v self.hspeed
push.d 0.4
add.d.v
pop.v.v self.hspeed

:[4]
push.v self.gravity
pushi.e 0
cmp.i.v EQ
bf [7]

:[5]
push.v 744.y
push.v self.y
cmp.v.v LT
bf [7]

:[6]
push.v self.x
push.v 744.x
sub.v.v
call.i abs(argc=1)
pushi.e 50
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
push.d 0.22
pop.v.d self.gravity
pushi.e 270
pop.v.i self.gravity_direction
pushi.e -5
pop.v.i self.vspeed
pushi.e 122
pop.v.i self.sprite_index

:[end]
.localvar 0 arguments

:[0]
push.v self.lock
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_angle
pushi.e 90
sub.i.v
pop.v.v self.gravity_direction
push.v self.image_angle
pushi.e 90
add.i.v
pop.v.v self.direction
push.v self.image_angle
pushi.e 90
add.i.v
pushi.e 7
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.txspeed
push.v self.image_angle
pushi.e 90
add.i.v
pushi.e 7
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.tyspeed
push.v self.sfx_b
call.i caster_stop(argc=1)
popz.v
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
push.v self.sfx_b
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i self.bb

:[2]
pushi.e 2
pop.v.i self.image_index
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]
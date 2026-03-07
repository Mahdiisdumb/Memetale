.localvar 0 arguments

:[0]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.path_position
push.d 0.5
cmp.d.v LT
bf [4]

:[3]
push.v self.path_speed
push.d 0.2
add.d.v
pop.v.v self.path_speed

:[4]
push.v self.path_position
push.d 0.5
cmp.d.v GT
bf [6]

:[5]
push.v self.path_speed
push.d 0.1
sub.d.v
pop.v.v self.path_speed

:[6]
push.v self.path_position
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
call.i path_end(argc=0)
popz.v
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.gravity
pushi.e 1
pop.v.i self.inactive

:[8]
pushglb.v global.hp
pushi.e 2
cmp.i.v LTE
bf [end]

:[9]
pushi.e -100
pop.v.i global.turntimer

:[end]
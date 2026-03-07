.localvar 0 arguments

:[0]
push.v self.sprite_index
pushi.e 1208
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 1209
pop.v.i self.sprite_index
pushi.e 863
conv.i.v
push.v self.y
pushi.e 3
add.i.v
push.v self.x
pushi.e 28
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 863
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.facing

:[3]
popenv [2]
pushi.e 863
pushenv [5]

:[4]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 23
conv.i.v
call.i path_start(argc=4)
popz.v

:[5]
popenv [4]
pushi.e 21
pop.v.i global.plot
pushi.e 1576
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.uncan

:[7]
popenv [6]
pushi.e 0
pop.v.i global.interact
pushi.e 871
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]
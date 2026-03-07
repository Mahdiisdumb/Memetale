.localvar 0 arguments

:[0]
push.v self.off
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.d 0.1
pop.v.d self.gravity
pushi.e 0
pop.v.i self.gravity_direction

:[2]
push.v self.off
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.d 0.1
pop.v.d self.gravity
pushi.e 180
pop.v.i self.gravity_direction

:[4]
push.v self.off
pushi.e 2
cmp.i.v EQ
bf [end]

:[5]
push.d 0.1
pop.v.d self.gravity
pushi.e 60
pushi.e 60
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.gravity_direction
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.pop
pushi.e 1
cmp.i.v GT
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]
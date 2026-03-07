.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.collide
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.collide
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i 1576.phasing

:[3]
push.v self.collide
pushi.e 2
cmp.i.v EQ
bf [12]

:[4]
push.v 1576.x
pushi.e 340
cmp.i.v LT
bf [6]

:[5]
push.v 1576.x
pushi.e 1
add.i.v
pop.v.v 1576.x

:[6]
push.v 1576.y
push.d 104.5
cmp.d.v LT
bf [8]

:[7]
push.v 1576.y
pushi.e 1
add.i.v
pop.v.v 1576.y

:[8]
push.v 1576.y
push.d 105.5
cmp.d.v GT
bf [10]

:[9]
push.v 1576.y
pushi.e 1
sub.i.v
pop.v.v 1576.y

:[10]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v 1576.x
pushi.e 339
cmp.i.v GTE
bf [12]

:[11]
pushi.e 340
pop.v.i 1576.x
pushi.e 105
pop.v.i 1576.y
pushi.e 1214
conv.i.v
push.v 1576.y
push.v 1576.x
call.i instance_create(argc=3)
pop.v.v self.tileguy
pushi.e 0
pop.v.i 1576.visible
pushi.e 3
pop.v.i self.collide

:[12]
pushglb.v global.plot
pushi.e 167
cmp.i.v GT
bf [end]

:[13]
pushi.e 0
pop.v.i self.active

:[end]
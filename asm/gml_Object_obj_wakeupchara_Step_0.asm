.localvar 0 arguments

:[0]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2
pop.v.i self.active
pushi.e 60
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[4]
push.v self.active
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i global.interact

:[6]
push.v self.active
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 4
pop.v.i self.active
pushi.e 10
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[8]
push.v self.active
pushi.e 5
cmp.i.v EQ
bf [end]

:[9]
push.v 1576.image_angle
pushi.e 18
add.i.v
pop.v.v 1576.image_angle
push.v 1576.y
pushi.e 4
sub.i.v
pop.v.v 1576.y
push.v 1576.x
pushi.e 8
sub.i.v
pop.v.v 1576.x
push.v 1576.image_angle
pushi.e -1
cmp.i.v GTE
bf [end]

:[10]
pushi.e 0
pop.v.i 1576.image_angle
pushbltn.v self.room
pushi.e 113
cmp.i.v EQ
bf [12]

:[11]
pushi.e 115
pop.v.i global.plot

:[12]
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]
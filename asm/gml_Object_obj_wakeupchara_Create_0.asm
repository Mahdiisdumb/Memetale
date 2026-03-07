.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.active
pushbltn.v self.room
pushi.e 113
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.plot
pushi.e 114
cmp.i.v LT
bf [end]

:[2]
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.active
pushi.e -90
pop.v.i 1576.image_angle
push.v 1576.y
pushi.e 10
add.i.v
pop.v.v 1576.y
pushi.e 0
pop.v.i global.facing

:[end]
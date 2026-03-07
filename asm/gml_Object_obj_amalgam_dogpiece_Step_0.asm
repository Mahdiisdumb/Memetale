.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
push.v self.ss
div.v.v
call.i sin(argc=1)
pushi.e 3
conv.i.d
div.d.v
add.v.v
pop.v.v self.y
push.v self.image_angle
push.v self.aa
add.v.v
pop.v.v self.image_angle

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.x
pop.v.v self.xx
push.v self.y
pop.v.v self.yy
push.v 1562.dx
pop.v.v self.newx
push.v 1562.dy
pop.v.v self.newy
push.v self.newx
push.v self.x
sub.v.v
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.tox
push.v self.newy
push.v self.y
sub.v.v
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.toy
pushi.e 2
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.v self.x
push.v self.tox
add.v.v
pop.v.v self.x
push.v self.y
push.v self.toy
add.v.v
pop.v.v self.y

:[6]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]
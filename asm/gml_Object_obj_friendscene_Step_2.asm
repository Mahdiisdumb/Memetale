.localvar 0 arguments

:[0]
push.v self.border_d
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 310
pop.v.i self.cx
pushi.e 330
pop.v.i self.cx2
pushi.e 290
pop.v.i self.cy
pushi.e 310
pop.v.i self.cy2
pushi.e 1
pop.v.i 744.visible
push.v self.cx
pushi.e 2
add.i.v
pop.v.v 744.x
push.v self.cy
pushi.e 2
add.i.v
pop.v.v 744.y

:[end]
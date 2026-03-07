.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 210
add.i.v
pop.v.v self.x
push.v self.x
pushi.e 210
cmp.i.v LT
bf [end]

:[1]
pushi.e 210
pop.v.i self.x

:[end]
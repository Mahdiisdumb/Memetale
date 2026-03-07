.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.phase
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.conversation
pushi.e 0
pop.v.i self.pathtravel
pushi.e -5
pushi.e 33
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.x
pushi.e 60
add.i.v
pop.v.v self.x
pushi.e 15
pop.v.i self.conversation

:[end]
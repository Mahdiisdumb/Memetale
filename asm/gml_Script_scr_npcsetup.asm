.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.halt
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.stopped
pushbltn.v self.argument0
pop.v.v self.movementtype
pushi.e -1
pop.v.i self.facing
push.v self.movementtype
pushi.e 2
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.facing

:[end]
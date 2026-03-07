.localvar 0 arguments

:[0]
push.v self.flashing
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.visible
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.visible
b [4]

:[3]
pushi.e 1
pop.v.i self.visible

:[4]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]
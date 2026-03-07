.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.anchor
push.v self.top
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e -15
pop.v.i self.vspeed
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.top
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 4
pop.v.i self.vspeed
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[4]
pushi.e 1
pop.v.i self.visible

:[end]
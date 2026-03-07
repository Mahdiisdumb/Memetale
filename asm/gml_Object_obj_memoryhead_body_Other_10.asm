.localvar 0 arguments

:[0]
push.v self.mega
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e -1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.mega
pushi.e 1
pop.v.i self.on

:[2]
push.v self.mega
pushi.e 4
cmp.i.v EQ
bf [end]

:[3]
pushi.e 2
pop.v.i self.mega

:[end]
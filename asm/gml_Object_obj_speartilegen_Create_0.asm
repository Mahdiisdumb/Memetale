.localvar 0 arguments

:[0]
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 57
pop.v.i self.tums
pushi.e 0
pop.v.i self.sound1
pushi.e 0
pop.v.i self.sound2
pushbltn.v self.room
pushi.e 112
cmp.i.v EQ
bf [end]

:[1]
pushi.e 30
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]
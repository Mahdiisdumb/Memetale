.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 100
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.snooze
pushbltn.v self.room
pushi.e 72
cmp.i.v EQ
bf [end]

:[1]
pushi.e 150
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]
.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushbltn.v self.room
pushi.e 147
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 371
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 3
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[5]
pushi.e 0
pop.v.i self.con

:[end]
.localvar 0 arguments

:[0]
pushi.e 4
pop.v.i self.sizefactor
pushi.e 20
pop.v.i self.xaround
pushi.e 5
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.sinercolor
pushi.e 0
pop.v.i self.greenbright
pushi.e 15
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.inactive
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.inactive

:[2]
push.v self.inactive
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 20
pop.v.i self.xaround
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]
.localvar 0 arguments

:[0]
push.v self.greenbright
pushi.e 1
add.i.v
pop.v.v self.greenbright
push.v self.greenbright
pushi.e 5
cmp.i.v GT
bf [2]

:[1]
pushi.e 0
pop.v.i self.greenbright

:[2]
push.v self.inactive
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 15
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[4]
push.v self.inactive
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
pushi.e 0
pop.v.i self.greenbright

:[end]
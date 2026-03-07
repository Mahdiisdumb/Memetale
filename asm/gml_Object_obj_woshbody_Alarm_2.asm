.localvar 0 arguments

:[0]
push.v self.waterxx
push.v self.wu
add.v.v
pop.v.v self.waterxx
push.v self.waterxx
pushi.e 15
cmp.i.v GT
bf [2]

:[1]
pushi.e -1
pop.v.i self.wu

:[2]
push.v self.waterxx
pushi.e 1
cmp.i.v LT
bf [4]

:[3]
pushi.e 1
pop.v.i self.wu

:[4]
push.v self.ducky
push.v self.wu
sub.v.v
pop.v.v self.ducky
pushi.e 5
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]
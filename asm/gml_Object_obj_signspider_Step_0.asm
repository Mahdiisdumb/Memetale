.localvar 0 arguments

:[0]
push.v self.x
pushi.e 580
cmp.i.v LT
bf [2]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.hspeed
pushi.e 1
add.i.v
pop.v.v self.hspeed

:[5]
push.v self.x
pushi.e 580
cmp.i.v LT
bf [8]

:[6]
push.v self.hspeed
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [end]

:[10]
pushi.e 1
pop.v.i self.con

:[end]
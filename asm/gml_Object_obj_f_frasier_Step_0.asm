.localvar 0 arguments

:[0]
pushi.e 1604
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
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
pushi.e 1
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[5]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[6]
pushi.e 294
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]
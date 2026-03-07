.localvar 0 arguments

:[0]
push.v global.transtype
pushi.e 1
add.i.v
pop.v.v global.transtype
pushi.e 1579
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.v self.hearts
pushi.e 1
add.i.v
pop.v.v self.hearts
push.v self.hearts
pushi.e 6
cmp.i.v LT
bf [2]

:[1]
pushi.e 8
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
b [end]

:[2]
pushi.e 20
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[end]
.localvar 0 arguments

:[0]
push.v self.dingus
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 2
pop.v.i self.dingus
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.unfader
push.d 0.03
push.v self.unfader
conv.v.i
pop.v.d [stacktop]self.tspeed
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[end]
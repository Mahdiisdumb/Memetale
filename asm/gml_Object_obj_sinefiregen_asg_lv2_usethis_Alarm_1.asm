.localvar 0 arguments

:[0]
pushi.e 466
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sidedam
push.v 744.x
pushi.e 6
add.i.v
pushi.e 320
cmp.i.v LT
bf [2]

:[1]
pushi.e 0
push.v self.sidedam
conv.v.i
pop.v.i [stacktop]self.side
b [3]

:[2]
pushi.e 1
push.v self.sidedam
conv.v.i
pop.v.i [stacktop]self.side

:[3]
pushi.e 75
push.v self.sidedam
conv.v.i
pop.v.i [stacktop]self.len
pushi.e 35
push.v self.sidedam
conv.v.i
pop.v.i [stacktop]self.wait
pushi.e 50
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]
.localvar 0 arguments

:[0]
pushi.e 326
conv.i.v
pushi.e 150
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.gen
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.dmg
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg

:[2]
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]
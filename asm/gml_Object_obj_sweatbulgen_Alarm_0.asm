.localvar 0 arguments

:[0]
pushi.e 674
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ggg
push.v self.dmg
push.v self.ggg
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]
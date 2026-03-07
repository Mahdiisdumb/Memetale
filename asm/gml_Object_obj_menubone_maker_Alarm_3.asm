.localvar 0 arguments

:[0]
pushi.e 505
conv.i.v
pushi.e -20
conv.i.v
pushi.e -20
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mbb
pushi.e 2
push.v self.mbb
conv.v.i
pop.v.i [stacktop]self.spot
pushi.e -5
push.v self.mbb
conv.v.i
pop.v.i [stacktop]self.myspeed

:[end]
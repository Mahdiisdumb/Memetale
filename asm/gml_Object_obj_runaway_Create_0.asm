.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.stop
pushi.e 0
pop.v.i self.edge
pushi.e 0
pop.v.i self.vedge
pushi.e 0
pop.v.i self.hedge
pushi.e 1
pop.v.i self.movement
pushi.e 1
pop.v.i self.xmovement
pushi.e 1
pop.v.i self.active
pushi.e 1116
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mykid
pushi.e 42
pop.v.i self.l
pushi.e 234
pop.v.i self.r
pushi.e 116
pop.v.i self.u
pushi.e 274
pop.v.i self.d

:[end]
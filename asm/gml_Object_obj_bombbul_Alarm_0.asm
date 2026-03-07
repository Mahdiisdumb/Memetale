.localvar 0 arguments

:[0]
pushi.e 345
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.b
push.v self.dmg
push.v self.b
conv.v.i
pop.v.v [stacktop]self.dmg
call.i instance_destroy(argc=0)
popz.v

:[end]
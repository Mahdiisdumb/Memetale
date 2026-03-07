.localvar 0 arguments

:[0]
push.v self.o
conv.v.i
push.v [stacktop]self.x
pushi.e 4
add.i.v
push.v self.x
sub.v.v
pop.v.v self.xamt
push.v self.rotspeed
push.v self.xamt
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.v.v self.rotspeed
push.v self.o
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]

:[end]
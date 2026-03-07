.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.green
pushi.e 321
conv.i.v
push.v self.y
pushi.e 5
sub.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.kid
push.v self.parent
push.v self.kid
conv.v.i
pop.v.v [stacktop]self.parent
push.v self.vspeed
push.d 1.3
div.d.v
pop.v.v self.vspeed

:[end]
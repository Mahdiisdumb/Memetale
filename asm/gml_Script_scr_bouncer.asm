.localvar 0 arguments

:[0]
pushi.e 111
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bouncer
pushbltn.v self.argument0
push.v self.bouncer
conv.v.i
pop.v.v [stacktop]self.myobject
pushbltn.v self.argument1
push.v self.bouncer
conv.v.i
pop.v.v [stacktop]self.bounceamt
pushbltn.v self.argument2
push.v self.bouncer
conv.v.i
pop.v.v [stacktop]self.grav

:[end]
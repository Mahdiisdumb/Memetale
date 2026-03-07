.localvar 0 arguments

:[0]
push.v self.myobject
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.v self.bounce
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.myobject
call.i instance_exists(argc=1)
conv.v.b
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v self.myobject
conv.v.i
push.v [stacktop]self.vspeed
pop.v.v self.remvspeed
push.v self.myobject
conv.v.i
push.v [stacktop]self.gravity
pop.v.v self.remgravity
pushi.e 270
push.v self.myobject
conv.v.i
pop.v.i [stacktop]self.gravity_direction
push.v self.bounceamt
neg.v
push.v self.myobject
conv.v.i
pop.v.v [stacktop]self.vspeed
push.v self.grav
push.v self.myobject
conv.v.i
pop.v.v [stacktop]self.gravity
push.v self.myobject
conv.v.i
push.v [stacktop]self.y
pop.v.v self.nowy
pushi.e 1
pop.v.i self.bounce

:[7]
push.v self.bounce
pushi.e 1
cmp.i.v EQ
bf [end]

:[8]
push.v self.myobject
conv.v.i
push.v [stacktop]self.y
push.v self.nowy
push.v self.myobject
conv.v.i
push.v [stacktop]self.vspeed
sub.v.v
cmp.v.v GTE
bf [end]

:[9]
push.v self.nowy
push.v self.myobject
conv.v.i
pop.v.v [stacktop]self.y
push.v self.remgravity
push.v self.myobject
conv.v.i
pop.v.v [stacktop]self.gravity
push.v self.remvspeed
push.v self.myobject
conv.v.i
pop.v.v [stacktop]self.vspeed
call.i instance_destroy(argc=0)
popz.v

:[end]
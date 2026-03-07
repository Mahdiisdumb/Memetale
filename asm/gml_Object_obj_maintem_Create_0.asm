.localvar 0 arguments

:[0]
pushi.e 10
pop.v.i self.dmg
pushi.e 86
pop.v.i self.height
pushi.e 65
pop.v.i self.length
pushi.e 665
conv.i.v
push.v self.y
push.v self.height
add.v.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.leg1
pushi.e 665
conv.i.v
push.v self.y
push.v self.height
add.v.v
push.v self.x
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.leg2
push.d 6.283185307179586
push.v self.leg2
conv.v.i
pop.v.d [stacktop]self.siner
pushi.e 665
conv.i.v
push.v self.y
push.v self.height
add.v.v
push.v self.x
pushi.e 40
add.i.v
push.v self.length
add.v.v
call.i instance_create(argc=3)
pop.v.v self.leg3
pushi.e 665
conv.i.v
push.v self.y
push.v self.height
add.v.v
push.v self.x
pushi.e 50
add.i.v
push.v self.length
add.v.v
call.i instance_create(argc=3)
pop.v.v self.leg4
push.d 6.283185307179586
push.v self.leg4
conv.v.i
pop.v.d [stacktop]self.siner
pushi.e 20
push.v self.leg3
conv.v.i
pop.v.i [stacktop]self.length
pushi.e 20
push.v self.leg4
conv.v.i
pop.v.i [stacktop]self.length
push.v self.height
pop.v.v 665.height
push.v self.dmg
pushi.e 3
sub.i.v
pop.v.v 665.dmg
pushi.e 0
pop.v.i self.control
push.d 0.15
pop.v.d self.adjustspeed
pushi.e 0
pop.v.i self.siner

:[end]
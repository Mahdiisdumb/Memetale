.localvar 0 arguments

:[0]
pushi.e 744
pop.v.i self.king
pushi.e 539
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 539
pop.v.i self.king

:[2]
pushi.e 536
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e 536
pop.v.i self.king

:[4]
pushi.e 1
conv.i.v
push.v self.king
conv.v.i
push.v [stacktop]self.y
push.v self.king
conv.v.i
push.v [stacktop]self.x
call.i move_towards_point(argc=3)
popz.v
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.d 0.2
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.siner
pushi.e 9
pop.v.i self.dmg

:[end]
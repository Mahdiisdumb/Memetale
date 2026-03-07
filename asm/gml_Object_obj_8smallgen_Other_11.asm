.localvar 0 arguments

:[0]
push.v self.ii
pop.v.v 625.iend
pushi.e 625
conv.i.v
pushi.e -1
push.v self.ii
conv.v.i
push.v [array]self.cy
pushi.e -1
push.v self.ii
conv.v.i
push.v [array]self.cx
call.i instance_create(argc=3)
pop.v.v self.k
pushi.e 75
push.v self.k
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 1.5
push.v self.k
conv.v.i
pop.v.d [stacktop]self.speed
pushi.e 90
push.v self.k
conv.v.i
pop.v.i [stacktop]self.direction
push.d -0.2
push.v self.k
conv.v.i
pop.v.d [stacktop]self.friction

:[end]
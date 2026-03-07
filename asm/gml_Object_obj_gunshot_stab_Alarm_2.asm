.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.visible
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [3]

:[2]
pushi.e 729
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 20
push.v self.i
mul.v.i
push.v self.g
conv.v.i
pop.v.v [stacktop]self.image_angle
pushi.e 45
push.v self.i
mul.v.i
push.v self.g
conv.v.i
pop.v.v [stacktop]self.siner
push.v self.image_blend
push.v self.g
conv.v.i
pop.v.v [stacktop]self.image_blend
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 730
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.g2
push.v self.image_blend
push.v self.g2
conv.v.i
pop.v.v [stacktop]self.image_blend
push.v self.shotno
pushi.e 1
add.i.v
pop.v.v self.shotno
pushi.e 3
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[end]
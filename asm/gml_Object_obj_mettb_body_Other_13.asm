.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dance
pushi.e 1
pop.v.i self.noleg
pushi.e 408
conv.i.v
push.v self.y
pushi.e 120
add.i.v
push.v self.yoffl
add.v.v
push.v self.legh
sub.v.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
sub.v.v
push.v self.x
pushi.e 90
add.i.v
push.v self.xoffl
sub.v.v
pushi.e 32
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.falllegl
pushi.e 2
push.v self.falllegl
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.falllegl
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.v self.leglsprite
push.v self.falllegl
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 408
conv.i.v
push.v self.y
pushi.e 120
add.i.v
push.v self.yoffr
add.v.v
push.v self.legh
sub.v.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
sub.v.v
push.v self.x
pushi.e 90
add.i.v
push.v self.xoffr
add.v.v
pushi.e 200
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.falllegr
pushi.e -2
push.v self.falllegr
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.falllegr
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.v self.falllegr
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 200
add.i.v
pop.i.v [stacktop]self.x
push.v self.legrsprite
push.v self.falllegr
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[end]
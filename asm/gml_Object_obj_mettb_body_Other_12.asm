.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.noarm
pushi.e 408
conv.i.v
push.v self.y
push.v self.legh
sub.v.v
pushi.e 80
add.i.v
push.v self.siner
push.d 3.5
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 36
add.i.v
push.v self.siner
push.d 3.5
div.d.v
call.i sin(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.fallarml
pushi.e 2
push.v self.fallarml
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.fallarml
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.v self.armlsprite
push.v self.fallarml
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 408
conv.i.v
push.v self.y
push.v self.legh
sub.v.v
pushi.e 80
add.i.v
push.v self.siner
push.d 3.5
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 110
add.i.v
push.v self.siner
push.d 3.5
div.d.v
call.i sin(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.fallarmr
pushi.e -2
push.v self.fallarmr
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.fallarmr
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.v self.armrsprite
push.v self.fallarmr
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[end]
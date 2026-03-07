.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.6
mul.d.v
sub.v.v
pop.v.v self.y
pushi.e 1
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.i
pop.v.v self.image_yscale
pushi.e 1
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
sub.v.i
pop.v.v self.image_xscale
b [3]

:[2]
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.image_xscale
push.v self.ystart
pop.v.v self.y

:[3]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]
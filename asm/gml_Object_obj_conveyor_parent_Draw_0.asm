.localvar 0 arguments
.localvar 1 i 9367
.localvar 2 j 9368

:[0]
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
push.v self.image_yscale
cmp.v.v LT
bf [end]

:[2]
pushi.e 0
pop.v.i local.j

:[3]
pushloc.v local.j
push.v self.image_xscale
cmp.v.v LT
bf [5]

:[4]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushloc.v local.i
pushi.e 20
mul.i.v
add.v.v
push.v self.x
pushloc.v local.j
pushi.e 20
mul.i.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [3]

:[5]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[end]
.localvar 0 arguments
.localvar 1 b 766
.localvar 2 c 767
.localvar 3 i 768
.localvar 4 xx 769
.localvar 5 g 770
.localvar 6 yy 771
.localvar 7 f 772

:[0]
pushbltn.v self.argument0
pop.v.v local.b
pushbltn.v self.argument1
pop.v.v local.c
push.v self.a
pushi.e 3
add.i.v
pop.v.v self.a
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
pushi.e 40
cmp.i.v LT
bf [end]

:[2]
push.v self.a
pushi.e 1
add.i.v
pop.v.v self.a
push.v self.x
push.v self.a
pushloc.v local.b
div.v.v
call.i sin(argc=1)
pushloc.v local.c
mul.v.v
add.v.v
pop.v.v local.xx
pushi.e 0
pop.v.i local.g

:[3]
pushloc.v local.g
pushi.e 4
cmp.i.v LT
bf [8]

:[4]
push.v self.y
pushloc.v local.i
add.v.v
pop.v.v local.yy
pushi.e 0
pop.v.i local.f

:[5]
pushloc.v local.f
pushi.e 8
cmp.i.v LT
bf [7]

:[6]
pushloc.v local.yy
pushloc.v local.xx
pushi.e 2
conv.i.v
push.v self.sprite_width
pushloc.v local.i
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part(argc=8)
popz.v
push.v local.yy
pushi.e 40
add.i.v
pop.v.v local.yy
push.v local.f
push.e 1
add.i.v
pop.v.v local.f
b [5]

:[7]
push.v local.xx
pushi.e 100
add.i.v
pop.v.v local.xx
push.v local.g
push.e 1
add.i.v
pop.v.v local.g
b [3]

:[8]
push.v local.i
pushi.e 2
add.i.v
pop.v.v local.i
b [1]

:[end]
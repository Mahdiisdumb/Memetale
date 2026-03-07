.localvar 0 arguments

:[0]
push.v self.create
pushi.e 0
cmp.i.v GTE
bf [2]

:[1]
pushi.e 1
push.v self.create
pushi.e 10
conv.i.d
div.d.v
sub.v.i
push.i 16777215
conv.i.v
push.v self.create
pushi.e 10
mul.i.v
pushi.e 1
push.v self.create
pushi.e 10
conv.i.d
div.d.v
add.v.i
pushi.e 1
push.v self.create
pushi.e 10
conv.i.d
div.d.v
add.v.i
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
pushi.e 1911
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.create
pushi.e 1
sub.i.v
pop.v.v self.create

:[2]
push.v self.create
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
push.v self.cury
push.v self.curx
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[4]
push.v self.curx
push.v self.x
cmp.v.v GT
bf [6]

:[5]
push.v self.curx
pushi.e 5
sub.i.v
pop.v.v self.curx

:[6]
push.v self.curx
push.v self.x
cmp.v.v LT
bf [8]

:[7]
push.v self.curx
pushi.e 5
add.i.v
pop.v.v self.curx

:[8]
push.v self.cury
push.v self.y
cmp.v.v GT
bf [10]

:[9]
push.v self.cury
pushi.e 5
sub.i.v
pop.v.v self.cury

:[10]
push.v self.cury
push.v self.y
cmp.v.v LT
bf [end]

:[11]
push.v self.cury
pushi.e 5
add.i.v
pop.v.v self.cury

:[end]
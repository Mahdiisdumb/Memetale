.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.image_yscale
cmp.v.v LT
bf [end]

:[2]
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.i
pushi.e 2
conv.i.d
div.d.v
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
sub.v.v
call.i sin(argc=1)
call.i abs(argc=1)
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.i
pushi.e 40
mul.i.v
add.v.v
push.v self.x
push.v self.siner
push.v self.i
pushi.e 4
mul.i.v
add.v.v
pushi.e 12
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 10
mul.i.v
add.v.v
push.v self.image_index
pushi.e 982
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.v self.i
pushi.e 2
conv.i.d
div.d.v
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
sub.v.v
call.i sin(argc=1)
call.i abs(argc=1)
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.i
pushi.e 40
mul.i.v
add.v.v
push.v self.x
push.v self.siner
push.v self.i
pushi.e 4
mul.i.v
add.v.v
pushi.e 12
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 10
mul.i.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[6]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]
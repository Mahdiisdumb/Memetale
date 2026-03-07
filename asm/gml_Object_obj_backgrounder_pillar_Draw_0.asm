.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [end]

:[2]
pushi.e 0
conv.i.v
push.v self.x
pushi.e 230
push.v self.i
mul.v.i
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 5
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
conv.i.v
push.v self.x
pushi.e 230
push.v self.i
mul.v.i
add.v.v
pushi.e 110
add.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[4]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]
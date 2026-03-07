.localvar 0 arguments

:[0]
pushglb.v global.faceemotion
pop.v.v self.image_index
push.d 0.6
conv.d.v
call.i random(argc=1)
push.d 0.6
conv.d.v
call.i random(argc=1)
sub.v.v
pop.v.v self.rr1
push.d 0.6
conv.d.v
call.i random(argc=1)
push.d 0.6
conv.d.v
call.i random(argc=1)
sub.v.v
pop.v.v self.rr2
pushglb.v global.faceemotion
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[2]
pushglb.v global.faceemotion
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
push.v self.y
push.v self.rr2
push.d 1.1
mul.d.v
add.v.v
push.v self.x
pushi.e 20
sub.i.v
push.v self.rr1
push.d 1.1
mul.d.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 938
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[4]
pushglb.v global.faceemotion
pushi.e 5
cmp.i.v NEQ
bf [7]

:[5]
pushglb.v global.faceemotion
pushi.e 2
cmp.i.v NEQ
bf [7]

:[6]
pushglb.v global.faceemotion
pushi.e 1
cmp.i.v NEQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[10]
pushglb.v global.faceemotion
pushi.e 5
cmp.i.v EQ
bt [12]

:[11]
pushglb.v global.faceemotion
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 1

:[13]
bf [15]

:[14]
push.v self.y
push.v self.rr2
add.v.v
push.v self.x
push.v self.rr1
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[15]
pushglb.v global.faceemotion
pushi.e 6
cmp.i.v EQ
bf [17]

:[16]
push.v self.y
push.v self.x
pushi.e 5
sub.i.v
push.v self.anim
pushi.e 937
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[17]
push.v self.anim
push.d 0.1
add.d.v
pop.v.v self.anim
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 124
conv.i.v
pushi.e 600
conv.i.v
pushi.e 120
conv.i.v
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[end]
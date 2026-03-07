.localvar 0 arguments

:[0]
pushi.e 478
conv.i.v
push.v self.y
pushi.e 56
add.i.v
push.v self.x
pushi.e 172
add.i.v
call.i instance_create(argc=3)
pop.v.v self.kk
pushi.e -1
push.v self.typeno
conv.v.i
push.v [array]self.type
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.i 16754964
push.v self.kk
conv.v.i
pop.v.i [stacktop]self.image_blend

:[2]
pushi.e -1
push.v self.typeno
conv.v.i
push.v [array]self.type
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.i 4235519
push.v self.kk
conv.v.i
pop.v.i [stacktop]self.image_blend

:[4]
push.v self.typeno
push.v self.typeamt
cmp.v.v GTE
bf [end]

:[5]
pushi.e 656
push.v self.kk
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.5
push.v self.kk
conv.v.i
pop.v.d [stacktop]self.image_speed

:[end]
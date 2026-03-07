.localvar 0 arguments

:[0]
push.v self.flowey
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 140
conv.i.v
pushi.e 140
conv.i.v
push.v self.fimg
pushi.e 671
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.fimg
pushi.e 8
cmp.i.v LT
bf [3]

:[2]
push.v self.fimg
push.d 0.5
add.d.v
pop.v.v self.fimg
b [4]

:[3]
pushi.e 2
pop.v.i self.flowey

:[4]
push.v self.flowey
pushi.e 2
cmp.i.v EQ
bf [9]

:[5]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 140
conv.i.v
pushi.e 140
conv.i.v
push.v self.fimg
pushi.e 671
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.facetype
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 140
conv.i.v
pushi.e 140
conv.i.v
pushglb.v global.faceemotion
pushi.e 668
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[7]
push.v self.facetype
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 140
conv.i.v
pushi.e 140
conv.i.v
pushglb.v global.faceemotion
pushi.e 669
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[9]
push.v self.flowey
pushi.e 3
cmp.i.v EQ
bf [end]

:[10]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 140
conv.i.v
pushi.e 140
conv.i.v
push.v self.fimg
pushi.e 647
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.fimg
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.v self.fimg
push.d 0.5
sub.d.v
pop.v.v self.fimg
b [end]

:[12]
pushi.e 4
pop.v.i self.flowey

:[end]
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
bf [6]

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

:[6]
push.v self.flowey
pushi.e 3
cmp.i.v EQ
bf [end]

:[7]
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
bf [9]

:[8]
push.v self.fimg
push.d 0.5
sub.d.v
pop.v.v self.fimg
b [end]

:[9]
pushi.e 4
pop.v.i self.flowey

:[end]
.localvar 0 arguments

:[0]
push.v self.anim
push.d 0.2
add.d.v
pop.v.v self.anim
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 78
add.i.v
push.v self.x
push.v self.anim
call.i floor(argc=1)
pushi.e 832
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.set
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushglb.v global.facechoice
pushi.e 833
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.set
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushglb.v global.facechoice
pushi.e 834
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]
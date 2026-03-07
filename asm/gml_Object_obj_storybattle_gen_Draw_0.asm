.localvar 0 arguments

:[0]
push.v self.flowey
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
call.i scr_textskip(argc=0)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.floweyy
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
push.v self.floweyx
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
pushi.e 0
conv.i.v
pushi.e 184
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.floweyy
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
push.v self.floweyx
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
pushglb.v global.faceemotion
pushi.e 670
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]
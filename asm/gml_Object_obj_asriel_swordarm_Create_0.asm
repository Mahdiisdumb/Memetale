.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 40
pop.v.i self.s_offset
pushi.e 0
pop.v.i self.o_o
pushi.e 0
pop.v.i self.smear
pushi.e 0
pop.v.i self.dontdraw
pushi.e 1
pop.v.i self.flip
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.visible
pushi.e 0
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
push.v self.id
cmp.v.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.flip

:[2]
push.v self.x
push.v 591.x
sub.v.v
pop.v.v self.relx
pushi.e 591
pop.v.i self.sm
pushi.e 0
pop.v.i self.skip
pushi.e 0
pop.v.i self.twinkle
pushi.e 0
pop.v.i self.shake
pushi.e 0
pop.v.i self.blazing
pushi.e 0
pop.v.i self.bl_o
pushi.e 570
pop.v.i self.king
push.v self.king
conv.v.i
push.v [stacktop]self.depth
pushi.e 1
add.i.v
pop.v.v self.depth
pushi.e 1
pop.v.i self.start
pushi.e 0
pop.v.i self.image_alpha
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.col
pushi.e 0
pop.v.i self.h_mode

:[end]
.localvar 0 arguments

:[0]
push.i 999995
conv.i.v
call.i tile_layer_hide(argc=1)
popz.v
pushi.e 0
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushglb.v global.plot
pushi.e 197
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
pushglb.v global.plot
pushi.e 193
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1250
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v
exit.i

:[4]
pushi.e 0
pop.v.i self.murder
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [6]

:[5]
pushi.e 1
pop.v.i self.murder

:[6]
pushi.e 6
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.con
pushi.e 1174
conv.i.v
pushi.e 705
conv.i.v
pushi.e 146
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mett
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
pop.v.i self.bl
pushi.e 0
pop.v.i self.drawblack
pushi.e 0
pop.v.i self.bly
pushi.e 0
pop.v.i self.skip
pushi.e 2067
conv.i.v
pushi.e 680
conv.i.v
pushi.e 60
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.sixty
push.i 999995
push.v self.sixty
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.sixty
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 0
pop.v.i self.sixtyflash
pushi.e 0
pop.v.i self.sixtyon
pushi.e 0
pop.v.i self.s_siner
push.d 0.35
conv.d.v
pushi.e 128
conv.i.v
pushi.e 0
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.x_maroon

:[end]
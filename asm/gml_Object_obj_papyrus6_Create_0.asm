.localvar 0 arguments

:[0]
pushi.e 999
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.conversation
call.i scr_murderlv(argc=0)
pushi.e 4
cmp.i.v GTE
bf [2]

:[1]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pushi.e -5
pushi.e 62
pop.v.i [array]global.flag
call.i instance_destroy(argc=0)
popz.v
exit.i

:[5]
pushi.e -5
pushi.e 62
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[7]
pushi.e 1034
conv.i.v
pushi.e 90
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.papyrus
push.v self.papyrus
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[end]
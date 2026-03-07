.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 66
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [3]

:[2]
pushi.e 0
pop.v.i self.conversation
pushi.e 999
pop.v.i self.image_yscale
pushi.e 1035
conv.i.v
pushi.e 60
conv.i.v
pushi.e 820
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sans
pushi.e 1034
conv.i.v
pushi.e 90
conv.i.v
pushi.e 820
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.papyrus
pushi.e 1423
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1443
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[3]
pushi.e 0
pop.v.i self.look
pushi.e 0
pop.v.i self.spinagain
pushi.e 0
pop.v.i self.murder
call.i scr_murderlv(argc=0)
pushi.e 5
cmp.i.v GTE
bf [5]

:[4]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
pop.v.i self.murder

:[8]
pushi.e 4
pop.v.i self.image_yscale

:[end]
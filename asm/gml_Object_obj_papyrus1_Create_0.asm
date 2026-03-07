.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 39
cmp.i.v GTE
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
pushi.e 110
conv.i.v
pushi.e 240
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sans
pushi.e 1034
conv.i.v
pushi.e 130
conv.i.v
pushi.e 240
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.papyrus
pushi.e 1416
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1445
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[3]
pushi.e 0
pop.v.i self.murder
call.i scr_murderlv(argc=0)
pushi.e 2
cmp.i.v GTE
bf [5]

:[4]
pushi.e 1
pop.v.i self.murder

:[5]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.murder

:[7]
pushi.e 0
pop.v.i self.look
pushi.e 0
pop.v.i self.spinagain

:[end]
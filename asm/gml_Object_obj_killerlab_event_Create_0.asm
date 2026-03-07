.localvar 0 arguments

:[0]
pushi.e 10
pop.v.i self.image_yscale
pushglb.v global.plot
pushi.e 159
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v LT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[4]
pushi.e 0
pop.v.i self.con
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 1174
conv.i.v
pushi.e 100
conv.i.v
pushi.e 820
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mett
push.d 0.125
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.image_speed

:[end]
.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushbltn.v self.room
pushi.e 219
cmp.i.v EQ
bf [2]

:[1]
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushbltn.v self.room
pushi.e 231
cmp.i.v EQ
bf [7]

:[6]
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
pushbltn.v self.room
pushi.e 183
cmp.i.v EQ
bf [12]

:[11]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [end]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[end]
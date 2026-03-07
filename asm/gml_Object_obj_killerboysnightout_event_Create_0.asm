.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.image_xscale
pushglb.v global.plot
pushi.e 163
cmp.i.v GT
bt [2]

:[1]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v LT
b [3]

:[2]
push.e 1

:[3]
bf [6]

:[4]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[5]
b [11]

:[6]
pushi.e 1936
conv.i.v
pushi.e 80
conv.i.v
pushi.e 154
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.bunny
pushi.e 1937
conv.i.v
pushi.e 80
conv.i.v
pushi.e 184
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.dragon
push.v self.bunny
conv.v.i
pushenv [8]

:[7]
call.i scr_depth(argc=0)
popz.v

:[8]
popenv [7]
push.v self.dragon
conv.v.i
pushenv [10]

:[9]
call.i scr_depth(argc=0)
popz.v

:[10]
popenv [9]

:[11]
pushi.e 0
pop.v.i self.con

:[end]
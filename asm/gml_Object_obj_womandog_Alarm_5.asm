.localvar 0 arguments

:[0]
push.v self.blconwd
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
push.v self.blcon
conv.v.i
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 0
pop.v.i self.talked
pushi.e -1
pop.v.i self.whatiheard
pushi.e 2
pop.v.i global.mnfight
pushi.e 8
pop.v.i global.border
pushi.e 246
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[5]
push.v 246.mycommand
pushi.e 50
cmp.i.v LTE
bf [end]

:[6]
pushi.e 9
pop.v.i global.border

:[end]
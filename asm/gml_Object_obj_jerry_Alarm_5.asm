.localvar 0 arguments

:[0]
push.v self.ditch
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.blconwd
conv.v.i
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
push.v self.blcon
conv.v.i
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]
pushi.e 0
pop.v.i self.talked
pushi.e -1
pop.v.i self.whatiheard
pushi.e 2
pop.v.i global.mnfight

:[end]
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
push.v self.turns
pushi.e 8
cmp.i.v NEQ
bf [6]

:[5]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag

:[6]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 2
pop.v.i global.mnfight

:[end]
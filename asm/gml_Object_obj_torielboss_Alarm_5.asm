.localvar 0 arguments

:[0]
pushi.e 786
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
push.v self.blconwd
conv.v.i
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
pushi.e 187
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[5]
push.v self.blcon
conv.v.i
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]

:[8]
pushi.e 188
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[9]
pushi.e 188
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]

:[12]
pushi.e 0
pop.v.i self.talked
pushi.e -1
pop.v.i self.whatiheard
pushi.e 2
pop.v.i global.mnfight
push.v self.mycommand
pushi.e 40
cmp.i.v LT
bt [14]

:[13]
pushglb.v global.hp
pushi.e 3
cmp.i.v LT
b [15]

:[14]
push.e 1

:[15]
bf [end]

:[16]
pushi.e 7
pop.v.i global.border

:[end]
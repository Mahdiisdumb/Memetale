.localvar 0 arguments

:[0]
pushi.e 20
pop.v.i self.con
pushi.e -5
pushi.e 413
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
push.l 34892348932
pop.v.l self.peeepee

:[end]
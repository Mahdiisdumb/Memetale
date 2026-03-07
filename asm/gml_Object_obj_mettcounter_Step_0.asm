.localvar 0 arguments

:[0]
pushi.e 1197
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[1]
push.v 1197.con
pushi.e 4
cmp.i.v LT
bf [3]

:[2]
push.i 1000000
pop.v.i self.depth
b [4]

:[3]
call.i scr_depth(argc=0)
popz.v

:[4]
b [end]

:[5]
call.i scr_depth(argc=0)
popz.v

:[end]
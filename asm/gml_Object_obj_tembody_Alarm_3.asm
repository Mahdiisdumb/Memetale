.localvar 0 arguments

:[0]
pushi.e 10
pop.v.i self.smuggy
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [end]

:[1]
pushi.e 673
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[2]
pushi.e 664
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
pushi.e 3
pop.v.i global.mnfight

:[end]
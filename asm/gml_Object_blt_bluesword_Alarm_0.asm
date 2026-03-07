.localvar 0 arguments

:[0]
push.v self.speartype
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 651
conv.i.v
push.v self.ystart
push.v self.xstart
call.i instance_create(argc=3)
popz.v
push.v self.dmg
pop.v.v 651.dmg

:[end]
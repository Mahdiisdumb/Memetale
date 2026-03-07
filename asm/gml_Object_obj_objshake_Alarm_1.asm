.localvar 0 arguments

:[0]
push.v self.oo
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.oo
b [3]

:[2]
pushi.e 0
pop.v.i self.oo

:[3]
push.v self.oo
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.thisx
push.v self.shx
sub.v.v
push.v self.obj
conv.v.i
pop.v.v [stacktop]self.x

:[5]
push.v self.oo
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.thisx
push.v self.shx
add.v.v
push.v self.obj
conv.v.i
pop.v.v [stacktop]self.x

:[7]
push.v self.shx
pushi.e 1
sub.i.v
pop.v.v self.shx
push.v self.shx
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
push.v self.shaketime
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
b [end]

:[9]
push.v self.thisx
push.v self.obj
conv.v.i
pop.v.v [stacktop]self.x
call.i instance_destroy(argc=0)
popz.v

:[end]
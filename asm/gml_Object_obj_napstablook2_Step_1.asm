.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
push.v self.talkedto
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 4
pop.v.i self.myinteract
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [end]

:[5]
pushi.e 2
pushi.e -5
pushi.e 36
pop.v.i [array]global.flag
call.i instance_destroy(argc=0)
popz.v

:[end]
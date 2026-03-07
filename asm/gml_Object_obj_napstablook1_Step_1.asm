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
bf [3]

:[1]
pushglb.v global.choice
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 20
pop.v.i global.battlegroup
pushi.e 0
pushi.e -5
pushi.e 200
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.mercy
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.talkedto

:[6]
pushglb.v global.plot
push.d 10.3
cmp.d.v EQ
bf [8]

:[7]
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 10.35
pop.v.d global.plot

:[8]
pushglb.v global.plot
push.d 10.4
cmp.d.v EQ
bf [10]

:[9]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [16]

:[12]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [16]

:[13]
pushi.e 1576
pushenv [15]

:[14]
pushi.e 0
pop.v.i self.uncan

:[15]
popenv [14]
pushi.e 11
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[16]
pushglb.v global.plot
pushi.e 11
cmp.i.v EQ
bf [end]

:[17]
pushi.e 1576
pushenv [19]

:[18]
pushi.e 0
pop.v.i self.uncan

:[19]
popenv [18]
pushi.e 0
pop.v.i global.border
pushi.e 0
pop.v.i global.mercy
call.i instance_destroy(argc=0)
popz.v

:[end]
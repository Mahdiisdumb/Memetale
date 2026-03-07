.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.check
pushi.e 749
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[1]
push.v self.blue
pushi.e 1
cmp.i.v EQ
bf [7]

:[2]
pushi.e 0
pop.v.i self.check
push.v 749.xprevious
push.v 749.x
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v GT
bt [4]

:[3]
push.v 749.yprevious
push.v 749.y
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v GT
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.check

:[7]
push.v self.blue
pushi.e 2
cmp.i.v EQ
bf [13]

:[8]
pushi.e 0
pop.v.i self.check
push.v 749.xprevious
push.v 749.x
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v LT
bf [10]

:[9]
push.v 749.yprevious
push.v 749.y
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v LT
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 1
pop.v.i self.check

:[13]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_damagestandard(argc=5)
popz.v

:[14]
pushi.e 744
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [16]

:[15]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
push.v self.blue
call.i scr_damagestandard(argc=5)
popz.v

:[16]
pushi.e -5
pushi.e 370
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [19]

:[17]
pushi.e -5
pushi.e 372
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushglb.v global.hp
pushi.e 0
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [end]

:[21]
pushi.e 1
pop.v.i global.hp
pushi.e 60
pop.v.i global.invc

:[end]
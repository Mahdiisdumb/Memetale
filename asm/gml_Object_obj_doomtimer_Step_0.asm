.localvar 0 arguments

:[0]
push.v self.dx
pushi.e 120
cmp.i.v LT
bf [2]

:[1]
push.v self.doomtime
pushi.e 1
add.i.v
pop.v.v self.doomtime

:[2]
push.v self.dx
pushi.e 90
cmp.i.v LT
bf [4]

:[3]
push.v self.doomtime
push.d 0.3
add.d.v
pop.v.v self.doomtime

:[4]
push.v self.dx
pushi.e 100
cmp.i.v GT
bf [6]

:[5]
push.v self.doomtime
push.d 0.3
sub.d.v
pop.v.v self.doomtime

:[6]
push.v self.dx
pushi.e 110
cmp.i.v GT
bf [8]

:[7]
push.v self.doomtime
push.d 0.5
sub.d.v
pop.v.v self.doomtime

:[8]
push.v self.dx
pushi.e 120
cmp.i.v GTE
bf [10]

:[9]
pushi.e 402
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [11]

:[10]
push.e 0

:[11]
bf [18]

:[12]
push.v 402.defuse
pushi.e 0
cmp.i.v EQ
bf [15]

:[13]
push.v 402.mypart1
conv.v.i
push.v [stacktop]self.got
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.v self.dr
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 1
pop.v.i self.dr
pushi.e 1
pushi.e -5
pushi.e 288
pop.v.i [array]global.flag
pushi.e 99
pop.v.i 401.type
pushi.e 99
pop.v.i 401.bombtype
pushi.e 0
pop.v.i 401.speed
pushi.e 1
pop.v.i 402.failure
pushi.e 1001
pop.v.i 402.con

:[18]
push.v self.dx
pushi.e 120
cmp.i.v GTE
bf [21]

:[19]
pushglb.v global.inbattle
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [29]

:[23]
push.v self.finaltimer
pushi.e 1
add.i.v
pop.v.v self.finaltimer
push.v self.finaltimer
pushi.e 5
cmp.i.v GT
bf [29]

:[24]
pushi.e 1226
pushenv [26]

:[25]
pushi.e 1
pop.v.i self.failure

:[26]
popenv [25]
pushi.e 1226
pushenv [28]

:[27]
pushi.e 160
pop.v.i self.con

:[28]
popenv [27]
call.i instance_destroy(argc=0)
popz.v

:[29]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 0
cmp.i.v LTE
bf [end]

:[30]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview

:[end]
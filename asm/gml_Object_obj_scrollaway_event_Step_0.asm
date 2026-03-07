.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.con
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[3]
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
push.v self.l2
call.i tile_layer_shift(argc=3)
popz.v
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
push.v self.l2x
call.i tile_layer_shift(argc=3)
popz.v
pushi.e 1251
pushenv [5]

:[4]
push.v 1576.y
pushi.e 1
sub.i.v
pop.v.v 1576.y
push.v self.mett
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.y
push.v self.sixty
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.y

:[5]
popenv [4]

:[6]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.v 1576.y
pop.v.v self.remay
push.v 1174.y
pop.v.v self.remby
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 3
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -6
pop.v.i self.blastup
pushi.e 0
pop.v.i self.bltotal
pushi.e 0
pop.v.i self.bl
pushi.e 0
pop.v.i self.ttotal
pushi.e 0
pop.v.i self.ttotal2
pushi.e 0
pop.v.i self.cl

:[8]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [24]

:[9]
push.v self.cl
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 14
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.cl

:[11]
push.v self.tspeed
push.d 0.4
add.d.v
pop.v.v self.tspeed
push.v self.tspeed
pushi.e 22
cmp.i.v GT
bf [13]

:[12]
pushi.e 22
pop.v.i self.tspeed

:[13]
push.v self.bl
pushi.e 0
cmp.i.v EQ
bf [19]

:[14]
push.v self.blastup
push.d 0.2
add.d.v
pop.v.v self.blastup
push.v self.bltotal
push.v self.blastup
add.v.v
pop.v.v self.bltotal
push.v self.blastup
pushi.e 0
conv.i.v
push.v self.l2
call.i tile_layer_shift(argc=3)
popz.v
push.v self.blastup
pushi.e 0
conv.i.v
push.v self.l2x
call.i tile_layer_shift(argc=3)
popz.v
push.v self.sixty
conv.v.i
dup.i 0
push.v [stacktop]self.y
push.v self.blastup
add.v.v
pop.i.v [stacktop]self.y
push.v 1576.y
push.v self.blastup
add.v.v
pop.v.v 1576.y
push.v 1174.y
push.v self.blastup
add.v.v
pop.v.v 1174.y
push.v self.blastup
pushi.e 0
cmp.i.v GT
bf [16]

:[15]
push.v self.bltotal
pushi.e 20
cmp.i.v GTE
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e -2
pop.v.i self.blastup

:[19]
push.v self.ttotal
pushi.e 300
cmp.i.v LT
bf [21]

:[20]
push.v self.ttotal
push.v self.tspeed
add.v.v
pop.v.v self.ttotal
push.v self.ttotal2
push.v self.tspeed
add.v.v
pop.v.v self.ttotal2
push.v self.tspeed
pushi.e 0
conv.i.v
push.v self.l1
call.i tile_layer_shift(argc=3)
popz.v
push.v self.tspeed
pushi.e 0
conv.i.v
push.v self.l3
call.i tile_layer_shift(argc=3)
popz.v

:[21]
push.v 1251.bly
push.v self.tspeed
add.v.v
pop.v.v 1251.bly
push.v self.ttotal
pushi.e 400
cmp.i.v GT
bf [23]

:[22]
push.v self.ttotal
pushi.e 400
sub.i.v
pop.v.v self.ttotal
pushi.e -400
conv.i.v
pushi.e 0
conv.i.v
push.v self.l1
call.i tile_layer_shift(argc=3)
popz.v

:[23]
pushi.e 1252
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[24]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [30]

:[25]
pushi.e 1252
pushenv [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
popenv [26]
pushi.e 7
pop.v.i self.con
push.v self.bltotal
neg.v
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
push.v self.l2
call.i tile_layer_shift(argc=3)
popz.v
push.v self.bltotal
neg.v
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
push.v self.l2x
call.i tile_layer_shift(argc=3)
popz.v
push.v self.sixty
call.i instance_exists(argc=1)
conv.v.b
bf [29]

:[28]
push.v self.sixty
conv.v.i
dup.i 0
push.v [stacktop]self.y
push.v self.bltotal
neg.v
pushi.e 20
add.i.v
add.v.v
pop.i.v [stacktop]self.y

:[29]
push.v self.ttotal2
neg.v
pushi.e 0
conv.i.v
push.v self.l3
call.i tile_layer_shift(argc=3)
popz.v
push.v self.ttotal
neg.v
pushi.e 0
conv.i.v
push.v self.l1
call.i tile_layer_shift(argc=3)
popz.v

:[30]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [end]

:[31]
call.i instance_destroy(argc=0)
popz.v

:[end]
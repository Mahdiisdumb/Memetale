.localvar 0 arguments

:[0]
pushi.e 5
pop.v.i global.damage
pushglb.v global.soul_rescue
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.damage

:[2]
pushglb.v global.soul_rescue
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 3
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v global.damage

:[4]
pushglb.v global.soul_rescue
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 10
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v global.damage

:[6]
pushglb.v global.soul_rescue
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 14
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v global.damage

:[8]
pushglb.v global.soul_rescue
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
pushi.e 18
pushi.e 4
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v global.damage

:[10]
pushglb.v global.soul_rescue
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
pushi.e 23
pushi.e 4
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v global.damage

:[12]
pushglb.v global.soul_rescue
pushi.e 6
cmp.i.v GTE
bf [23]

:[13]
pushi.e 150
pushi.e 70
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v global.damage
push.v self.megadamage
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 250
pushi.e 21
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v global.damage

:[15]
push.v self.megadamage
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
pushi.e 360
pushi.e 21
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v global.damage

:[17]
push.v self.megadamage
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
pushi.e 700
pushi.e 21
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v global.damage

:[19]
push.v self.megadamage
pushi.e 4
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1200
pushi.e 21
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v global.damage

:[21]
push.v self.megadamage
pushi.e 8
cmp.i.v EQ
bf [23]

:[22]
pushi.e 6000
pop.v.i global.damage

:[23]
pushglb.v global.damage
pushi.e 100
cmp.i.v GT
bf [27]

:[24]
pushi.e 1593
pushenv [26]

:[25]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[26]
popenv [25]
pushi.e 6
pop.v.i self.knockfactor
pushi.e 1
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm
b [30]

:[27]
pushi.e 1593
pushenv [29]

:[28]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[29]
popenv [28]

:[30]
push.v global.floweyhp
pushglb.v global.damage
sub.v.v
pop.v.v global.floweyhp
pushglb.v global.damage
pushi.e 100
cmp.i.v LT
bf [32]

:[31]
pushi.e 159
conv.i.v
call.i snd_play(argc=1)
popz.v
b [33]

:[32]
pushi.e 137
conv.i.v
call.i snd_play(argc=1)
popz.v

:[33]
pushi.e 1605
conv.i.v
pushi.e 140
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dd
pushi.e 60
push.v self.dd
conv.v.i
pushi.e 2
pop.v.i [array]self.alarm
pushglb.v global.floweyhp
pushi.e 0
cmp.i.v LTE
bf [end]

:[34]
pushi.e 1602
pushenv [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [35]
pushi.e 1589
pushenv [38]

:[37]
call.i instance_destroy(argc=0)
popz.v

:[38]
popenv [37]
pushi.e 1590
pushenv [40]

:[39]
call.i instance_destroy(argc=0)
popz.v

:[40]
popenv [39]
pushi.e 1633
pushenv [42]

:[41]
call.i instance_destroy(argc=0)
popz.v

:[42]
popenv [41]
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 137
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -1
push.v self.dd
conv.v.i
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.dcon
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[end]
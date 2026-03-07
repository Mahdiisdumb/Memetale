.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 100
conv.i.v
call.i random(argc=1)
pushi.e 10
pushglb.v global.turn
mul.v.i
add.v.v
pop.v.v self.runvalue
b [6]

:[2]
pushglb.v global.turn
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.runvalue

:[4]
pushglb.v global.turn
pushi.e 1
cmp.i.v GTE
bf [6]

:[5]
pushi.e 100
conv.i.v
call.i random(argc=1)
pushi.e 10
pushglb.v global.turn
pushi.e 1
sub.i.v
mul.v.i
add.v.v
pop.v.v self.runvalue

:[6]
pushi.e 273
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[7]
pushi.e 100
pop.v.i self.runvalue

:[8]
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [11]

:[9]
pushglb.v global.armor
pushi.e 4
cmp.i.v EQ
bf [11]

:[10]
pushi.e 100
pop.v.i self.runvalue

:[11]
push.v self.runvalue
pushi.e 50
cmp.i.v GT
bf [end]

:[12]
pushi.e 1
pop.v.i self.runaway
pushi.e 50
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -3
pop.v.i 744.hspeed
pushi.e 62
pop.v.i 744.sprite_index
push.d 0.5
pop.v.d 744.image_speed
pushi.e 3
pop.v.i 784.halt
push.v global.xp
pushi.e -5
pushi.e 3
push.v [array]global.xpreward
add.v.v
pop.v.v global.xp
push.v global.gold
pushi.e -5
pushi.e 3
push.v [array]global.goldreward
add.v.v
pop.v.v global.gold
pushglb.v global.lv
pop.v.v self.tlvl
pushi.e 59
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.levelup
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 49
conv.i.v
call.i snd_play(argc=1)
popz.v

:[14]
pushi.e 14
pop.v.i global.msc
pushi.e 787
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
popz.v
pushi.e 1
pushi.e -5
pushi.e 11
pop.v.i [array]global.flag
pushi.e -5
pushi.e 24
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[end]
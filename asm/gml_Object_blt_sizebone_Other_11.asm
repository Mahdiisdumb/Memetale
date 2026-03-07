.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.hit
push.v self.blue
pushi.e 1
cmp.i.v EQ
bf [4]

:[2]
call.i scr_blueat(argc=0)
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.hit

:[4]
pushglb.v global.invc
pushi.e 1
cmp.i.v LT
bf [6]

:[5]
push.v self.hit
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [end]

:[8]
push.v self.dmg
pushglb.v global.df
pushglb.v global.adef
add.v.v
pushi.e 5
conv.i.d
div.d.v
sub.v.v
call.i round(argc=1)
pop.v.v self.dmgamt
push.v self.dmgamt
pushi.e 3
cmp.i.v LT
bf [10]

:[9]
pushi.e 3
pop.v.i self.dmgamt

:[10]
pushglb.v global.hardmode
pushi.e 0
cmp.i.v EQ
bf [17]

:[11]
pushi.e 233
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [17]

:[12]
push.v 233.fighto
pushi.e 13
cmp.i.v GT
bf [17]

:[13]
pushglb.v global.hp
pushi.e 10
cmp.i.v LT
bf [15]

:[14]
push.v self.dmgamt
pushi.e 1
sub.i.v
pop.v.v self.dmgamt

:[15]
pushglb.v global.hp
pushi.e 5
cmp.i.v LT
bf [17]

:[16]
push.v self.dmgamt
pushi.e 1
sub.i.v
pop.v.v self.dmgamt

:[17]
push.v global.hp
push.v self.dmgamt
sub.v.v
pop.v.v global.hp
pushglb.v global.inv
pushi.e 3
mul.i.v
pop.v.v global.invc
pushi.e 560
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [33]

:[18]
pushglb.v global.hp
pushi.e 0
cmp.i.v GT
bf [20]

:[19]
pushi.e 53
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i global.hshake
pushi.e 2
pop.v.i global.shakespeed
pushi.e 2
pop.v.i global.vshake
pushi.e 185
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v
b [32]

:[20]
push.v self.captured
pushi.e 0
cmp.i.v EQ
bf [32]

:[21]
pushi.e 53
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i global.hshake
pushi.e 2
pop.v.i global.shakespeed
pushi.e 2
pop.v.i global.vshake
pushi.e 185
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.visible
pushi.e 1
pop.v.i global.hp
pushi.e 1
pop.v.i self.captured
pushi.e 300
pop.v.i global.turntimer
pushi.e 233
pushenv [23]

:[22]
pushi.e 1
pop.v.i self.dontcancel

:[23]
popenv [22]
pushi.e 50
pop.v.i global.invc
pushi.e 0
pop.v.i self.hspeed
pushi.e 653
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [25]

:[24]
pushi.e 2
pop.v.i 653.active
pushi.e 0
pop.v.i 653.visible

:[25]
pushi.e 654
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [27]

:[26]
pushi.e 2
pop.v.i 654.active
pushi.e 0
pop.v.i 653.visible

:[27]
pushi.e 687
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [31]

:[28]
pushi.e 687
pushenv [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
popenv [29]

:[31]
pushi.e 0
pop.v.i 744.vspeed
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[32]
b [end]

:[33]
pushi.e 53
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i global.hshake
pushi.e 2
pop.v.i global.shakespeed
pushi.e 2
pop.v.i global.vshake
pushi.e 185
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]
.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.heal
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i scr_damagestandard(argc=5)
popz.v

:[5]
push.v self.heal
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
pushi.e 110
conv.i.v
call.i snd_play(argc=1)
popz.v
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [9]

:[7]
push.v global.hp
pushi.e 6
add.i.v
pop.v.v global.hp
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v GT
bf [9]

:[8]
pushglb.v global.maxhp
pop.v.v global.hp

:[9]
pushi.e -5
pushi.e 393
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
bf [11]

:[10]
pushi.e -5
pushi.e 393
push.v [array]global.flag
call.i caster_free(argc=1)
popz.v
pushi.e 0
pushi.e -5
pushi.e 393
pop.v.i [array]global.flag

:[11]
pushi.e -3
conv.i.v
call.i caster_resume(argc=1)
popz.v
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight
push.v self.object_index
conv.v.i
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]

:[end]
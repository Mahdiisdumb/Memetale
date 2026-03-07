.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
push.v self.type
pushi.e 3
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [29]

:[4]
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.image_alpha
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [12]

:[5]
push.v self.set
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 2300
pop.v.i self.sprite_index

:[7]
push.v self.set
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 2301
pop.v.i self.sprite_index

:[9]
push.v self.set
pushi.e 2
cmp.i.v EQ
bf [11]

:[10]
pushi.e 2302
pop.v.i self.sprite_index

:[11]
pushglb.v global.faceemotion
pop.v.v self.image_index

:[12]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
push.d 0.5
pop.v.d self.image_speed
pushi.e 2303
pop.v.i self.sprite_index

:[14]
push.v self.moved
pushi.e 2
cmp.i.v NEQ
bf [17]

:[15]
push.v self.ns
call.i caster_is_playing(argc=1)
conv.v.b
bf [17]

:[16]
push.v self.ns
call.i caster_stop(argc=1)
popz.v

:[17]
push.v self.moved
pushi.e 2
cmp.i.v EQ
bf [29]

:[18]
push.d 1.98
push.d 0.02
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.image_xscale
push.d 1.98
push.d 0.02
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.image_yscale
push.v self.xx
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.x
push.v self.yy
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.y
push.v self.helltimer
pushi.e 1
add.i.v
pop.v.v self.helltimer
push.v self.helltimer
pushi.e 50
cmp.i.v LT
bf [21]

:[19]
push.v self.ns
call.i caster_is_playing(argc=1)
conv.v.b
bf [21]

:[20]
push.v self.ns
call.i caster_stop(argc=1)
popz.v

:[21]
push.v self.helltimer
pushi.e 50
cmp.i.v EQ
bf [24]

:[22]
push.v self.ns
call.i caster_is_playing(argc=1)
conv.v.b
not.b
bf [24]

:[23]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.ns
call.i caster_loop(argc=3)
popz.v

:[24]
push.v self.helltimer
pushi.e 50
cmp.i.v GTE
bf [26]

:[25]
pushi.e 2309
pop.v.i self.sprite_index
pushi.e 99
conv.i.v
call.i random(argc=1)
pop.v.v self.image_index
push.d 0.86
pop.v.d self.image_xscale
push.d 0.58
pop.v.d self.image_yscale

:[26]
push.v self.helltimer
pushi.e 56
cmp.i.v GTE
bf [29]

:[27]
pushi.e -100
pushi.e 320
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
sub.v.i
pop.v.v self.helltimer
push.v self.ns
call.i caster_is_playing(argc=1)
conv.v.b
bf [29]

:[28]
push.v self.ns
call.i caster_stop(argc=1)
popz.v

:[29]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [32]

:[30]
pushi.e 1
pop.v.i self.image_alpha
pushi.e 2309
pop.v.i self.sprite_index
push.d 0.86
pop.v.d self.image_xscale
push.d 0.58
pop.v.d self.image_yscale
pushi.e 1
pop.v.i self.image_speed
push.v self.ns
call.i caster_is_playing(argc=1)
conv.v.b
not.b
bf [32]

:[31]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.ns
call.i caster_loop(argc=3)
popz.v

:[32]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [end]

:[33]
push.v self.ns
call.i caster_is_playing(argc=1)
conv.v.b
bf [35]

:[34]
push.v self.ns
call.i caster_stop(argc=1)
popz.v

:[35]
pushi.e 0
pop.v.i self.image_alpha

:[end]
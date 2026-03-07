.localvar 0 arguments

:[0]
push.v self.ok
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 360
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [13]

:[4]
pushi.e -5
pushi.e 361
dup.i 1
push.v [array]global.flag
push.d 0.02
sub.d.v
pop.i.v [array]global.flag
pushi.e -5
pushi.e 362
dup.i 1
push.v [array]global.flag
push.d 0.02
sub.d.v
pop.i.v [array]global.flag
pushi.e -5
pushi.e 361
push.v [array]global.flag
pushi.e 0
cmp.i.v LT
bf [6]

:[5]
pushi.e 0
pushi.e -5
pushi.e 361
pop.v.i [array]global.flag

:[6]
pushi.e -5
pushi.e 362
push.v [array]global.flag
pushi.e 0
cmp.i.v LT
bf [8]

:[7]
pushi.e 0
pushi.e -5
pushi.e 362
pop.v.i [array]global.flag

:[8]
pushi.e -5
pushi.e 361
push.v [array]global.flag
pushi.e -5
pushi.e 363
push.v [array]global.flag
call.i caster_set_volume(argc=2)
popz.v
pushi.e -5
pushi.e 362
push.v [array]global.flag
pushi.e -5
pushi.e 364
push.v [array]global.flag
call.i caster_set_volume(argc=2)
popz.v
pushi.e -5
pushi.e 361
push.v [array]global.flag
push.d 0.1
cmp.d.v LT
bf [10]

:[9]
pushi.e -5
pushi.e 362
push.v [array]global.flag
push.d 0.1
cmp.d.v LT
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 0
pushi.e -5
pushi.e 360
pop.v.i [array]global.flag
pushi.e -5
pushi.e 363
push.v [array]global.flag
call.i caster_free(argc=1)
popz.v
pushi.e -5
pushi.e 364
push.v [array]global.flag
call.i caster_free(argc=1)
popz.v
pushi.e -1
pushi.e -5
pushi.e 363
pop.v.i [array]global.flag
pushi.e -1
pushi.e -5
pushi.e 364
pop.v.i [array]global.flag
call.i instance_destroy(argc=0)
popz.v

:[13]
pushi.e -5
pushi.e 360
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushbltn.v self.room
pushi.e 105
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bt [20]

:[17]
pushbltn.v self.room
pushi.e 108
cmp.i.v EQ
bt [20]

:[18]
pushbltn.v self.room
pushi.e 104
cmp.i.v EQ
bt [20]

:[19]
pushbltn.v self.room
pushi.e 110
cmp.i.v EQ
b [21]

:[20]
push.e 1

:[21]
bf [27]

:[22]
pushi.e -5
pushi.e 361
push.v [array]global.flag
push.d 0.08
cmp.d.v GT
bf [24]

:[23]
pushi.e -5
pushi.e 361
dup.i 1
push.v [array]global.flag
push.d 0.02
sub.d.v
pop.i.v [array]global.flag

:[24]
pushi.e -5
pushi.e 362
push.v [array]global.flag
push.d 0.5
cmp.d.v LT
bf [26]

:[25]
pushi.e -5
pushi.e 362
dup.i 1
push.v [array]global.flag
push.d 0.02
add.d.v
pop.i.v [array]global.flag

:[26]
pushi.e -5
pushi.e 361
push.v [array]global.flag
pushi.e -5
pushi.e 363
push.v [array]global.flag
call.i caster_set_volume(argc=2)
popz.v
pushi.e -5
pushi.e 362
push.v [array]global.flag
pushi.e -5
pushi.e 364
push.v [array]global.flag
call.i caster_set_volume(argc=2)
popz.v

:[27]
pushi.e -5
pushi.e 360
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
pushbltn.v self.room
pushi.e 106
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bt [33]

:[31]
pushbltn.v self.room
pushi.e 107
cmp.i.v EQ
bt [33]

:[32]
pushbltn.v self.room
pushi.e 109
cmp.i.v EQ
b [34]

:[33]
push.e 1

:[34]
bf [end]

:[35]
pushi.e -5
pushi.e 362
push.v [array]global.flag
push.d 0.02
cmp.d.v GT
bf [37]

:[36]
pushi.e -5
pushi.e 362
dup.i 1
push.v [array]global.flag
push.d 0.02
sub.d.v
pop.i.v [array]global.flag

:[37]
pushi.e -5
pushi.e 361
push.v [array]global.flag
push.d 0.5
cmp.d.v LT
bf [39]

:[38]
pushi.e -5
pushi.e 361
dup.i 1
push.v [array]global.flag
push.d 0.02
add.d.v
pop.i.v [array]global.flag

:[39]
pushi.e -5
pushi.e 361
push.v [array]global.flag
pushi.e -5
pushi.e 363
push.v [array]global.flag
call.i caster_set_volume(argc=2)
popz.v
pushi.e -5
pushi.e 362
push.v [array]global.flag
pushi.e -5
pushi.e 364
push.v [array]global.flag
call.i caster_set_volume(argc=2)
popz.v

:[end]
.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
pushi.e 0
pop.v.i self.played
pushi.e 0
pop.v.i self.ok
pushbltn.v self.room
pushi.e 104
cmp.i.v EQ
bt [9]

:[3]
pushbltn.v self.room
pushi.e 105
cmp.i.v EQ
bt [9]

:[4]
pushbltn.v self.room
pushi.e 106
cmp.i.v EQ
bt [9]

:[5]
pushbltn.v self.room
pushi.e 107
cmp.i.v EQ
bt [9]

:[6]
pushbltn.v self.room
pushi.e 108
cmp.i.v EQ
bt [9]

:[7]
pushbltn.v self.room
pushi.e 109
cmp.i.v EQ
bt [9]

:[8]
pushbltn.v self.room
pushi.e 110
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [12]

:[11]
pushi.e 1
pop.v.i self.ok

:[12]
pushi.e -5
pushi.e 360
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.ok
pushi.e 1
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [end]

:[16]
push.d 0.5
pushi.e -5
pushi.e 361
pop.v.d [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 362
pop.v.i [array]global.flag
pushbltn.v self.room
pushi.e 104
cmp.i.v EQ
bt [18]

:[17]
pushbltn.v self.room
pushi.e 110
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [21]

:[20]
pushi.e 0
pushi.e -5
pushi.e 361
pop.v.i [array]global.flag
push.d 0.5
pushi.e -5
pushi.e 362
pop.v.d [array]global.flag

:[21]
push.s "music/rain.ogg"@2649
conv.s.v
call.i caster_load(argc=1)
pushi.e -5
pushi.e 363
pop.v.v [array]global.flag
push.s "music/rain_deep.ogg"@2650
conv.s.v
call.i caster_load(argc=1)
pushi.e -5
pushi.e 364
pop.v.v [array]global.flag
pushi.e -999
pop.v.i global.currentsong
push.d 0.9
conv.d.v
pushi.e -5
pushi.e 361
push.v [array]global.flag
pushi.e -5
pushi.e 363
push.v [array]global.flag
call.i caster_loop(argc=3)
popz.v
push.d 0.9
conv.d.v
pushi.e -5
pushi.e 362
push.v [array]global.flag
pushi.e -5
pushi.e 364
push.v [array]global.flag
call.i caster_loop(argc=3)
popz.v
pushi.e 1
pushi.e -5
pushi.e 360
pop.v.i [array]global.flag

:[end]
.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 510
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [9]

:[4]
pushglb.v global.currentsong
call.i caster_is_playing(argc=1)
pushi.e 1
cmp.i.v NEQ
bf [6]

:[5]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.s "music/reunited.ogg"@2782
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v
exit.i

:[9]
pushi.e -5
pushi.e 510
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bt [11]

:[10]
pushi.e -5
pushi.e 510
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [15]

:[13]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[14]
b [end]

:[15]
pushglb.v global.maxhp
pop.v.v global.hp
push.s "music/reunited.ogg"@2782
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
pushi.e -5
pushi.e 7
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 287
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 509
pop.v.i [array]global.flag
pushi.e 999
pop.v.i global.plot
pushi.e 1313
pushenv [17]

:[16]
pushi.e 0
pop.v.i self.direction

:[17]
popenv [16]
pushi.e 1314
pushenv [19]

:[18]
pushi.e 0
pop.v.i self.direction

:[19]
popenv [18]
pushi.e 1318
pushenv [21]

:[20]
pushi.e 180
pop.v.i self.direction

:[21]
popenv [20]
pushi.e 1317
pushenv [23]

:[22]
pushi.e 180
pop.v.i self.direction

:[23]
popenv [22]
pushi.e 1
pop.v.i global.interact
push.d 0.1
pop.v.d self.con
pushi.e 140
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.blk
pushi.e 1
pop.v.i self.d_blk
pushi.e 0
pop.v.i global.screen_border_alpha

:[end]
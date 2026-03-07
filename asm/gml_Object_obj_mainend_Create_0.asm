.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.con
pushi.e 1576
conv.i.v
pushi.e 20
conv.i.v
pushi.e 120
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mc
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 20
pop.v.i self.q
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v NEQ
bf [5]

:[1]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 0
cmp.i.v LTE
bf [5]

:[2]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [5]

:[3]
pushglb.v global.kills
pushi.e 10
cmp.i.v LT
bf [5]

:[4]
pushi.e 0
pop.v.i self.q

:[5]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v NEQ
bf [8]

:[6]
pushglb.v global.kills
pushi.e 10
cmp.i.v GTE
bf [8]

:[7]
pushi.e 1
pop.v.i self.q

:[8]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v NEQ
bf [14]

:[9]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [11]

:[10]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [14]

:[13]
pushi.e 1
pop.v.i self.q

:[14]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [17]

:[15]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [17]

:[16]
pushi.e 2
pop.v.i self.q

:[17]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [21]

:[18]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [21]

:[19]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
pushi.e 3
pop.v.i self.q

:[21]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [26]

:[22]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [26]

:[23]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [26]

:[24]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [26]

:[25]
pushi.e 4
pop.v.i self.q

:[26]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [31]

:[27]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [31]

:[28]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [31]

:[29]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 5
pop.v.i self.q

:[31]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [37]

:[32]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [37]

:[33]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [37]

:[34]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [37]

:[35]
pushglb.v global.kills
pushi.e 4
cmp.i.v EQ
bf [37]

:[36]
pushi.e 6
pop.v.i self.q

:[37]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [40]

:[38]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
pushi.e 7
pop.v.i self.q

:[40]
push.v self.q
pushi.e 0
cmp.i.v EQ
bt [44]

:[41]
push.v self.q
pushi.e 1
cmp.i.v EQ
bt [44]

:[42]
push.v self.q
pushi.e 2
cmp.i.v EQ
bt [44]

:[43]
push.v self.q
pushi.e 4
cmp.i.v EQ
b [45]

:[44]
push.e 1

:[45]
bf [47]

:[46]
push.s "music/z_ending.ogg"@2771
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong

:[47]
push.v self.q
pushi.e 3
cmp.i.v EQ
bf [49]

:[48]
push.s "music/mtgameshow.ogg"@2856
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong

:[49]
push.v self.q
pushi.e 5
cmp.i.v EQ
bf [51]

:[50]
push.s "music/wind.ogg"@2634
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong

:[51]
push.v self.q
pushi.e 6
cmp.i.v EQ
bt [53]

:[52]
push.v self.q
pushi.e 20
cmp.i.v EQ
b [54]

:[53]
push.e 1

:[54]
bf [56]

:[55]
push.s "music/dogsong.ogg"@2831
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong

:[56]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i self.musiccon

:[end]
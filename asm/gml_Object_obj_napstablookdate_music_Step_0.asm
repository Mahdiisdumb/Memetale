.localvar 0 arguments

:[0]
push.v self.fadeout
pushi.e 1
cmp.i.v EQ
bf [27]

:[1]
push.v self.curvol
push.d 0.02
sub.d.v
pop.v.v self.curvol
push.v self.songplaying
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
push.v self.curvol
push.d 0.015
add.d.v
pop.v.v self.curvol

:[3]
push.v self.curvol
pushi.e 0
cmp.i.v LTE
bf [5]

:[4]
pushi.e 0
pop.v.i self.curvol

:[5]
push.v self.songplaying
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.curvol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[7]
push.v self.songplaying
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.v self.curvol
push.v self.napstachords
call.i caster_set_volume(argc=2)
popz.v

:[9]
push.v self.songplaying
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
push.v self.curvol
push.v self.spoopy
call.i caster_set_volume(argc=2)
popz.v

:[11]
push.v self.songplaying
pushi.e 4
cmp.i.v EQ
bf [13]

:[12]
push.v self.curvol
push.v self.spoopywave
call.i caster_set_volume(argc=2)
popz.v

:[13]
push.v self.songplaying
pushi.e 5
cmp.i.v EQ
bf [15]

:[14]
push.v self.curvol
push.v self.spoopyholiday
call.i caster_set_volume(argc=2)
popz.v

:[15]
push.v self.curvol
pushi.e 0
cmp.i.v EQ
bf [27]

:[16]
push.v self.songplaying
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v

:[18]
push.v self.songplaying
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
push.v self.napstachords
call.i caster_stop(argc=1)
popz.v

:[20]
push.v self.songplaying
pushi.e 3
cmp.i.v EQ
bf [22]

:[21]
push.v self.spoopy
call.i caster_stop(argc=1)
popz.v

:[22]
push.v self.songplaying
pushi.e 4
cmp.i.v EQ
bf [24]

:[23]
push.v self.spoopywave
call.i caster_stop(argc=1)
popz.v

:[24]
push.v self.songplaying
pushi.e 5
cmp.i.v EQ
bf [26]

:[25]
push.v self.spoopyholiday
call.i caster_stop(argc=1)
popz.v

:[26]
pushi.e 0
pop.v.i self.songplaying
pushi.e 0
pop.v.i self.fadeout

:[27]
push.v self.fadeout
pushi.e 2
cmp.i.v EQ
bf [44]

:[28]
push.v self.curvol
push.d 0.02
add.d.v
pop.v.v self.curvol
push.v self.songplaying
pushi.e 2
cmp.i.v EQ
bf [30]

:[29]
push.v self.curvol
push.d 0.015
sub.d.v
pop.v.v self.curvol

:[30]
push.v self.curvol
pushi.e 1
cmp.i.v GTE
bf [32]

:[31]
pushi.e 1
pop.v.i self.curvol

:[32]
push.v self.songplaying
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
push.v self.curvol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[34]
push.v self.songplaying
pushi.e 2
cmp.i.v EQ
bf [36]

:[35]
push.v self.curvol
push.v self.napstachords
call.i caster_set_volume(argc=2)
popz.v

:[36]
push.v self.songplaying
pushi.e 3
cmp.i.v EQ
bf [38]

:[37]
push.v self.curvol
push.v self.spoopy
call.i caster_set_volume(argc=2)
popz.v

:[38]
push.v self.songplaying
pushi.e 4
cmp.i.v EQ
bf [40]

:[39]
push.v self.curvol
push.v self.spoopywave
call.i caster_set_volume(argc=2)
popz.v

:[40]
push.v self.songplaying
pushi.e 5
cmp.i.v EQ
bf [42]

:[41]
push.v self.curvol
push.v self.spoopyholiday
call.i caster_set_volume(argc=2)
popz.v

:[42]
push.v self.curvol
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
pushi.e 0
pop.v.i self.fadeout

:[44]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [56]

:[45]
pushi.e 1
pushi.e -5
pushi.e 94
pop.v.i [array]global.flag
push.v self.songplaying
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v

:[47]
push.v self.songplaying
pushi.e 2
cmp.i.v EQ
bf [49]

:[48]
push.v self.napstachords
call.i caster_stop(argc=1)
popz.v

:[49]
push.v self.songplaying
pushi.e 3
cmp.i.v EQ
bf [51]

:[50]
push.v self.spoopy
call.i caster_stop(argc=1)
popz.v

:[51]
push.v self.songplaying
pushi.e 4
cmp.i.v EQ
bf [53]

:[52]
push.v self.spoopywave
call.i caster_stop(argc=1)
popz.v

:[53]
push.v self.songplaying
pushi.e 5
cmp.i.v EQ
bf [55]

:[54]
push.v self.spoopyholiday
call.i caster_stop(argc=1)
popz.v

:[55]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.spoopy
call.i caster_loop(argc=3)
popz.v
pushi.e 3
pop.v.i self.songplaying
pushi.e 1
pop.v.i self.curvol
pushi.e 0
pop.v.i self.con

:[56]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [68]

:[57]
pushi.e 0
pushi.e -5
pushi.e 94
pop.v.i [array]global.flag
push.v self.songplaying
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v

:[59]
push.v self.songplaying
pushi.e 2
cmp.i.v EQ
bf [61]

:[60]
push.v self.napstachords
call.i caster_stop(argc=1)
popz.v

:[61]
push.v self.songplaying
pushi.e 3
cmp.i.v EQ
bf [63]

:[62]
push.v self.spoopy
call.i caster_stop(argc=1)
popz.v

:[63]
push.v self.songplaying
pushi.e 4
cmp.i.v EQ
bf [65]

:[64]
push.v self.spoopywave
call.i caster_stop(argc=1)
popz.v

:[65]
push.v self.songplaying
pushi.e 5
cmp.i.v EQ
bf [67]

:[66]
push.v self.spoopyholiday
call.i caster_stop(argc=1)
popz.v

:[67]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 1
pop.v.i self.songplaying
pushi.e 1
pop.v.i self.curvol
pushi.e 0
pop.v.i self.con

:[68]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [80]

:[69]
pushi.e 2
pushi.e -5
pushi.e 94
pop.v.i [array]global.flag
push.v self.songplaying
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v

:[71]
push.v self.songplaying
pushi.e 2
cmp.i.v EQ
bf [73]

:[72]
push.v self.napstachords
call.i caster_stop(argc=1)
popz.v

:[73]
push.v self.songplaying
pushi.e 3
cmp.i.v EQ
bf [75]

:[74]
push.v self.spoopy
call.i caster_stop(argc=1)
popz.v

:[75]
push.v self.songplaying
pushi.e 4
cmp.i.v EQ
bf [77]

:[76]
push.v self.spoopywave
call.i caster_stop(argc=1)
popz.v

:[77]
push.v self.songplaying
pushi.e 5
cmp.i.v EQ
bf [79]

:[78]
push.v self.spoopyholiday
call.i caster_stop(argc=1)
popz.v

:[79]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.spoopywave
call.i caster_loop(argc=3)
popz.v
pushi.e 4
pop.v.i self.songplaying
pushi.e 1
pop.v.i self.curvol
pushi.e 0
pop.v.i self.con

:[80]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [end]

:[81]
pushi.e 3
pushi.e -5
pushi.e 94
pop.v.i [array]global.flag
push.v self.songplaying
pushi.e 1
cmp.i.v EQ
bf [83]

:[82]
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v

:[83]
push.v self.songplaying
pushi.e 2
cmp.i.v EQ
bf [85]

:[84]
push.v self.napstachords
call.i caster_stop(argc=1)
popz.v

:[85]
push.v self.songplaying
pushi.e 3
cmp.i.v EQ
bf [87]

:[86]
push.v self.spoopy
call.i caster_stop(argc=1)
popz.v

:[87]
push.v self.songplaying
pushi.e 4
cmp.i.v EQ
bf [89]

:[88]
push.v self.spoopywave
call.i caster_stop(argc=1)
popz.v

:[89]
push.v self.songplaying
pushi.e 5
cmp.i.v EQ
bf [91]

:[90]
push.v self.spoopyholiday
call.i caster_stop(argc=1)
popz.v

:[91]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.spoopyholiday
call.i caster_loop(argc=3)
popz.v
pushi.e 5
pop.v.i self.songplaying
pushi.e 1
pop.v.i self.curvol
pushi.e 0
pop.v.i self.con

:[end]
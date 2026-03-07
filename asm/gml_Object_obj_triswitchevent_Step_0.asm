.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.switches
pushi.e 2
cmp.i.v EQ
bf [6]

:[2]
push.v 1576.x
pushi.e 390
cmp.i.v LT
bf [6]

:[3]
push.v 1576.x
pushi.e 380
cmp.i.v GT
bf [6]

:[4]
push.v 1576.y
pushi.e 90
cmp.i.v LT
bf [6]

:[5]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 0
pop.v.i global.facechoice
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 1
pop.v.i global.interact
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_triswitchevent_120"@28196
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_triswitchevent_121"@28197
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_triswitchevent_122"@28199
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_triswitchevent_123"@28200
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_triswitchevent_124"@28201
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 140
pop.v.i global.plot
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 0.1
pop.v.d self.con
pushi.e 28
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[9]
push.v self.con
push.d 1.1
cmp.d.v EQ
bf [11]

:[10]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[14]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [20]

:[15]
push.v 1576.x
pushi.e 280
cmp.i.v LT
bf [20]

:[16]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [20]

:[17]
push.v self.switches
pushi.e 3
cmp.i.v LT
bf [20]

:[18]
push.v self.won
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 1
pop.v.i global.interact
pushi.e 6
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
pushi.e 47
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_triswitchevent_147"@28203
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_triswitchevent_148"@28205
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_triswitchevent_149"@28207
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_triswitchevent_150"@28209
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_triswitchevent_151"@28210
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_triswitchevent_152"@28211
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 140
pop.v.i global.plot
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 3
pop.v.i self.con

:[23]
push.v self.con
pushi.e 3
cmp.i.v EQ
bt [27]

:[24]
push.v self.con
pushi.e 1
cmp.i.v EQ
bt [27]

:[25]
push.v self.con
push.d 0.1
cmp.d.v EQ
bt [27]

:[26]
push.v self.con
push.d 1.1
cmp.d.v EQ
b [28]

:[27]
push.e 1

:[28]
bf [42]

:[29]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [42]

:[30]
push.v self.donkeykongismyfavoritemarvelsuperhero
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
push.v 784.writingx
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
sub.v.v
pop.v.v self.wrx
push.v 780.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
sub.v.v
pop.v.v self.dgx
pushi.e 1
pop.v.i self.donkeykongismyfavoritemarvelsuperhero

:[32]
push.v self.donkeykongismyfavoritemarvelsuperhero
pushi.e 1
cmp.i.v EQ
bf [36]

:[33]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.wrx
add.v.v
pop.v.v 784.myx
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.wrx
add.v.v
pop.v.v 784.writingx
pushi.e 775
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [35]

:[34]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 24
add.i.v
pop.v.v 775.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.wrx
add.v.v
pushi.e 58
add.i.v
pop.v.v 784.myx
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.wrx
add.v.v
pushi.e 58
add.i.v
pop.v.v 784.writingx

:[35]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v 780.xx
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.dgx
add.v.v
pop.v.v 780.x

:[36]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [38]

:[37]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [42]

:[40]
push.v self.deltaco
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e 1
pop.v.i self.deltaco

:[42]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [44]

:[43]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[47]
push.v self.switches
pushi.e 3
cmp.i.v EQ
bf [49]

:[48]
push.v self.con
pushi.e 4
cmp.i.v LT
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 1
pop.v.i self.won
pushi.e 1
pop.v.i self.deltaco

:[52]
push.v self.won
pushi.e 1
cmp.i.v EQ
bf [55]

:[53]
push.v 1576.x
pushi.e 280
cmp.i.v LT
bf [55]

:[54]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
pushi.e 1
pop.v.i global.interact
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 6
pop.v.i global.facechoice
pushi.e 6
pop.v.i global.faceemotion
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_triswitchevent_213"@28212
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_triswitchevent_214"@28213
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_triswitchevent_215"@28215
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_triswitchevent_216"@28217
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_triswitchevent_217"@28219
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_triswitchevent_218"@28220
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_triswitchevent_219"@28221
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 140
pop.v.i global.plot
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 8
pop.v.i self.con
pushi.e 1
pushi.e -5
pushi.e 404
pop.v.i [array]global.flag
pushi.e 140
pop.v.i global.plot

:[58]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [60]

:[59]
pushi.e 0
pop.v.i global.interact
pushi.e 9
pop.v.i self.con

:[60]
push.v self.deltaco
pushi.e 1
cmp.i.v EQ
bf [end]

:[61]
push.v self.ff
conv.v.i
pushenv [63]

:[62]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha

:[63]
popenv [62]
push.v self.ff
conv.v.i
push.v [stacktop]self.image_alpha
push.d 0.06
cmp.d.v LT
bf [end]

:[64]
push.v self.ff
conv.v.i
pushenv [66]

:[65]
call.i instance_destroy(argc=0)
popz.v

:[66]
popenv [65]
pushi.e 2
pop.v.i self.deltaco

:[end]
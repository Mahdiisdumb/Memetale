.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.msc
push.v self.stalk
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 188
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
b [3]

:[2]
push.v self.sblcon
pop.v.v self.blcon

:[3]
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
push.s "obj_papyrusboss_548"@21168
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.conversation
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushglb.v global.talked
pushi.e 91
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.s "obj_papyrusboss_552"@21170
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
push.v self.conversation
pushi.e 0
cmp.i.v EQ
bf [12]

:[9]
push.v self.whatiheard
pushi.e -1
cmp.i.v EQ
bf [12]

:[10]
pushglb.v global.talked
pushi.e 91
cmp.i.v NEQ
bf [12]

:[11]
push.v self.murder
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [18]

:[14]
pushi.e 1
pop.v.i self.talkify
pushi.e -1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
push.v self.prevhp
cmp.v.v LT
bf [16]

:[15]
push.s "obj_papyrusboss_558"@21172
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [17]

:[16]
push.s "obj_papyrusboss_559"@21174
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[17]
push.s "obj_papyrusboss_560"@21176
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrusboss_561"@21177
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.conversation
pushi.e -1
pop.v.i self.mycommand

:[18]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 140
cmp.i.v LTE
bf [21]

:[19]
push.v self.fighto
pushi.e 14
cmp.i.v LTE
bf [21]

:[20]
push.v self.xfight
pushi.e 4
cmp.i.v LT
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 14
pop.v.i self.fighto
pushi.e 4
pop.v.i self.xfight

:[24]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 80
cmp.i.v LTE
bf [26]

:[25]
push.v self.fighto
pushi.e 15
cmp.i.v LT
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 15
pop.v.i self.fighto
pushi.e 0
pop.v.i self.xfight

:[29]
push.v self.truefight
pushi.e 1
cmp.i.v EQ
bf [119]

:[30]
pushi.e 0
pop.v.i self.talkify
push.v self.fighto
pushi.e -1
cmp.i.v EQ
bf [32]

:[31]
push.s "obj_papyrusboss_570"@21179
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
push.v self.fighto
pushi.e -1
cmp.i.v EQ
bf [34]

:[33]
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
push.s "obj_papyrusboss_571"@21181
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[37]
push.v self.fighto
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
push.s "obj_papyrusboss_572"@21183
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[39]
push.v self.fighto
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
push.s "obj_papyrusboss_573"@21185
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[44]
push.v self.fighto
pushi.e 0
cmp.i.v EQ
bf [47]

:[45]
push.v self.hearthp2
push.v self.hearthp
cmp.v.v LT
bf [47]

:[46]
push.v self.xxtalk
pushi.e 0
cmp.i.v EQ
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
push.s "obj_papyrusboss_574"@21187
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -1
pop.v.i self.fighto
pushi.e 1
pop.v.i self.xxtalk

:[50]
push.v self.fighto
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_papyrusboss_575"@21189
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
push.v self.fighto
pushi.e 1
cmp.i.v EQ
bf [55]

:[53]
push.v self.hearthp2
push.v self.hearthp
cmp.v.v LT
bf [55]

:[54]
push.v self.xxtalk
pushi.e 2
cmp.i.v LT
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
push.s "obj_papyrusboss_576"@21191
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self.fighto
pushi.e 2
pop.v.i self.xxtalk

:[58]
push.v self.fighto
pushi.e 2
cmp.i.v EQ
bf [60]

:[59]
push.s "obj_papyrusboss_577"@21193
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
push.v self.fighto
pushi.e 3
cmp.i.v EQ
bf [62]

:[61]
push.s "obj_papyrusboss_578"@21195
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
push.v self.fighto
pushi.e 4
cmp.i.v EQ
bf [64]

:[63]
push.s "obj_papyrusboss_579"@21197
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[64]
push.v self.fighto
pushi.e 5
cmp.i.v EQ
bf [66]

:[65]
push.s "obj_papyrusboss_580"@21199
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[66]
push.v self.fighto
pushi.e 6
cmp.i.v EQ
bf [68]

:[67]
push.s "obj_papyrusboss_581"@21201
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[68]
push.v self.fighto
pushi.e 7
cmp.i.v EQ
bf [70]

:[69]
push.s "obj_papyrusboss_582"@21203
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[70]
push.v self.fighto
pushi.e 8
cmp.i.v EQ
bf [72]

:[71]
push.s "obj_papyrusboss_583"@21205
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[72]
push.v self.fighto
pushi.e 9
cmp.i.v EQ
bf [74]

:[73]
push.s "obj_papyrusboss_584"@21207
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[74]
push.v self.fighto
pushi.e 9
cmp.i.v EQ
bf [76]

:[75]
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [77]

:[76]
push.e 0

:[77]
bf [79]

:[78]
push.s "obj_papyrusboss_585"@21209
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[79]
push.v self.fighto
pushi.e 10
cmp.i.v EQ
bf [81]

:[80]
push.s "obj_papyrusboss_586"@21211
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[81]
push.v self.fighto
pushi.e 11
cmp.i.v EQ
bf [83]

:[82]
push.s "obj_papyrusboss_587"@21213
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[83]
push.v self.fighto
pushi.e 11
cmp.i.v EQ
bf [85]

:[84]
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [86]

:[85]
push.e 0

:[86]
bf [88]

:[87]
push.s "obj_papyrusboss_588"@21215
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[88]
push.v self.fighto
pushi.e 12
cmp.i.v EQ
bf [90]

:[89]
push.s "obj_papyrusboss_589"@21217
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[90]
push.v self.fighto
pushi.e 13
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_papyrusboss_590"@21219
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[92]
push.v self.fighto
pushi.e 14
cmp.i.v EQ
bf [94]

:[93]
push.v self.xfight
pushi.e 0
cmp.i.v EQ
b [95]

:[94]
push.e 0

:[95]
bf [97]

:[96]
push.s "obj_papyrusboss_591"@21221
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[97]
push.v self.fighto
pushi.e 14
cmp.i.v EQ
bf [99]

:[98]
push.v self.xfight
pushi.e 1
cmp.i.v EQ
b [100]

:[99]
push.e 0

:[100]
bf [102]

:[101]
push.s "obj_papyrusboss_592"@21223
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[102]
push.v self.fighto
pushi.e 14
cmp.i.v EQ
bf [104]

:[103]
push.v self.xfight
pushi.e 2
cmp.i.v EQ
b [105]

:[104]
push.e 0

:[105]
bf [107]

:[106]
push.s "obj_papyrusboss_593"@21225
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[107]
push.v self.fighto
pushi.e 14
cmp.i.v EQ
bf [109]

:[108]
push.v self.xfight
pushi.e 2
cmp.i.v GT
b [110]

:[109]
push.e 0

:[110]
bf [112]

:[111]
push.s "obj_papyrusboss_594"@21227
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[112]
push.v self.fighto
pushi.e 14
cmp.i.v EQ
bf [114]

:[113]
push.v self.xfight
pushi.e 3
cmp.i.v GT
b [115]

:[114]
push.e 0

:[115]
bf [117]

:[116]
push.s "obj_papyrusboss_595"@21229
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[117]
push.v self.fighto
pushi.e 15
cmp.i.v EQ
bf [119]

:[118]
push.s "obj_papyrusboss_596"@21231
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[119]
push.v self.whatiheard
pushi.e -1
cmp.i.v GT
bf [121]

:[120]
push.v self.fighto
pushi.e 2
cmp.i.v LT
b [122]

:[121]
push.e 0

:[122]
bf [147]

:[123]
push.v self.fighto
pushi.e 0
cmp.i.v LT
bf [147]

:[124]
pushi.e 0
pop.v.i self.talkify
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [126]

:[125]
push.v self.fighto
pushi.e 2
cmp.i.v LT
b [127]

:[126]
push.e 0

:[127]
bf [129]

:[128]
push.s "obj_papyrusboss_604"@21233
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[129]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [131]

:[130]
push.s "obj_papyrusboss_605"@21235
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[131]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [133]

:[132]
push.v self.insult
pushi.e 2
cmp.i.v EQ
b [134]

:[133]
push.e 0

:[134]
bf [136]

:[135]
push.s "obj_papyrusboss_606"@21237
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[136]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [138]

:[137]
push.v self.insult
pushi.e 2
cmp.i.v GT
b [139]

:[138]
push.e 0

:[139]
bf [141]

:[140]
push.s "obj_papyrusboss_607"@21239
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[141]
push.v self.whatiheard
pushi.e 6
cmp.i.v EQ
bt [144]

:[142]
push.v self.whatiheard
pushi.e 7
cmp.i.v EQ
bt [144]

:[143]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
b [145]

:[144]
push.e 1

:[145]
bf [147]

:[146]
push.s "obj_papyrusboss_608"@21241
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[147]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [149]

:[148]
push.s "obj_papyrusboss_612"@21242
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[149]
pushi.e 22
pop.v.i global.typer
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
push.v self.blcon_textofs
add.v.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 5
pop.v.i global.border
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.y
pushi.e 0
pop.v.i self.stalk

:[end]
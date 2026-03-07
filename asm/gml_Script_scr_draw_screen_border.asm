.localvar 0 arguments
.localvar 1 border_id 151
.localvar 2 fade_time 153
.localvar 3 idle_min 155
.localvar 4 idle_time 156
.localvar 5 idle_frame 160
.localvar 6 base 161
.localvar 7 i 162
.localvar 8 overlay 163
.localvar 9 room_id 166

:[0]
pushbltn.v self.argument0
pop.v.v local.border_id
pushi.e 0
conv.i.v
call.i draw_enable_alphablend(argc=1)
popz.v
pushloc.v local.border_id
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 201
conv.i.v
call.i scr_draw_background_ps4(argc=3)
popz.v

:[3]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 202
conv.i.v
call.i draw_background(argc=3)
popz.v

:[5]
pushloc.v local.border_id
pushi.e 2
cmp.i.v EQ
bf [46]

:[6]
pushi.e 60
pop.v.i local.fade_time
pushi.e 1341
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[7]
push.v global.screen_border_state
pushi.e 1
conv.i.d
pushloc.v local.fade_time
div.v.d
add.v.v
pop.v.v global.screen_border_state
pushglb.v global.screen_border_state
pushi.e 1
cmp.i.v GT
bf [9]

:[8]
pushi.e 1
pop.v.i global.screen_border_state

:[9]
b [12]

:[10]
push.v global.screen_border_state
pushi.e 1
conv.i.d
pushloc.v local.fade_time
div.v.d
sub.v.v
pop.v.v global.screen_border_state
pushglb.v global.screen_border_state
pushi.e 0
cmp.i.v LT
bf [12]

:[11]
pushi.e 0
pop.v.i global.screen_border_state

:[12]
push.i 300000
pop.v.i local.idle_min
pushi.e 0
pop.v.i local.idle_time
push.v 1575.idle
conv.v.b
bf [14]

:[13]
pushbltn.v self.current_time
push.v 1575.idle_time
pushloc.v local.idle_min
add.v.v
cmp.v.v GTE
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushbltn.v self.current_time
push.v 1575.idle_time
pushloc.v local.idle_min
add.v.v
sub.v.v
pop.v.v local.idle_time

:[17]
pushloc.v local.idle_time
pushi.e 100
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 3
mod.i.v
pop.v.v local.idle_frame
pushi.e -4
pop.v.i local.base
pushi.e 0
pop.v.i local.i

:[18]
pushloc.v local.i
pushi.e 9
cmp.i.v LT
bf [20]

:[19]
pushi.e -4
pushi.e -7
pushloc.v local.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 0
pushi.e -7
pushloc.v local.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 0
pushi.e -7
pushloc.v local.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]local.overlay
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [18]

:[20]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [28]

:[21]
pushi.e 207
pop.v.i local.base
pushi.e 34
pushi.e -7
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 679
pushi.e -7
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 94
pushi.e -7
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 939
pushi.e -7
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 269
pushi.e -7
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 489
pushi.e -7
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 0
pushi.e -7
pushi.e 3
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 319
pushi.e -7
pushi.e 3
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 209
pushi.e -7
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 34
pushi.e -7
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 1734
pushi.e -7
pushi.e 5
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 0
pushi.e -7
pushi.e 5
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 1829
pushi.e -7
pushi.e 6
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 359
pushi.e -7
pushi.e 6
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 1789
pushi.e -7
pushi.e 7
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 709
pushi.e -7
pushi.e 7
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 1584
pushi.e -7
pushi.e 8
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 1049
pushi.e -7
pushi.e 8
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushloc.v local.idle_frame
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 208
pushi.e -7
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 210
pushi.e -7
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 212
pushi.e -7
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 214
pushi.e -7
pushi.e 3
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 216
pushi.e -7
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 218
pushi.e -7
pushi.e 5
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 220
pushi.e -7
pushi.e 6
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 222
pushi.e -7
pushi.e 7
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 224
pushi.e -7
pushi.e 8
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
b [25]

:[23]
pushloc.v local.idle_frame
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
pushi.e 209
pushi.e -7
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 211
pushi.e -7
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 213
pushi.e -7
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 215
pushi.e -7
pushi.e 3
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 217
pushi.e -7
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 219
pushi.e -7
pushi.e 5
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 221
pushi.e -7
pushi.e 6
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 223
pushi.e -7
pushi.e 7
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 225
pushi.e -7
pushi.e 8
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay

:[25]
pushglb.v global.screen_border_state
pushi.e 0
cmp.i.v GT
bf [27]

:[26]
pushi.e 226
pop.v.i self.overlay1

:[27]
b [35]

:[28]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [35]

:[29]
pushi.e 227
pop.v.i local.base
pushi.e 18
pushi.e -7
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 304
pushi.e -7
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 54
pushi.e -7
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 460
pushi.e -7
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 0
pushi.e -7
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 88
pushi.e -7
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 880
pushi.e -7
pushi.e 3
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 0
pushi.e -7
pushi.e 3
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 937
pushi.e -7
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 199
pushi.e -7
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 913
pushi.e -7
pushi.e 5
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 409
pushi.e -7
pushi.e 5
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushloc.v local.idle_frame
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 228
pushi.e -7
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 230
pushi.e -7
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 232
pushi.e -7
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 234
pushi.e -7
pushi.e 3
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 236
pushi.e -7
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 238
pushi.e -7
pushi.e 5
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
b [33]

:[31]
pushloc.v local.idle_frame
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
pushi.e 229
pushi.e -7
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 231
pushi.e -7
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 233
pushi.e -7
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 235
pushi.e -7
pushi.e 3
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 237
pushi.e -7
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay
pushi.e 239
pushi.e -7
pushi.e 5
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.i [array]local.overlay

:[33]
pushglb.v global.screen_border_state
pushi.e 0
cmp.i.v GT
bf [35]

:[34]
pushi.e 240
pop.v.i self.overlay1

:[35]
pushloc.v local.base
pushi.e -4
cmp.i.v NEQ
bf [46]

:[36]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.base
call.i scr_draw_background_ps4(argc=3)
popz.v
pushi.e -7
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]local.overlay
pushi.e -4
cmp.i.v NEQ
bf [41]

:[37]
pushglb.v global.screen_border_state
pushi.e 0
cmp.i.v GT
bf [39]

:[38]
pushi.e 1
conv.i.v
call.i draw_enable_alphablend(argc=1)
popz.v
pushglb.v global.screen_border_state
push.d 0.5
mul.d.v
call.i draw_set_alpha(argc=1)
popz.v

:[39]
pushi.e -7
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]local.overlay
pushi.e -7
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]local.overlay
pushi.e -7
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]local.overlay
call.i scr_draw_background_ps4(argc=3)
popz.v
pushglb.v global.screen_border_state
pushi.e 0
cmp.i.v GT
bf [41]

:[40]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_enable_alphablend(argc=1)
popz.v

:[41]
pushi.e 1
pop.v.i local.i

:[42]
pushloc.v local.i
pushi.e 9
cmp.i.v LT
bf [46]

:[43]
pushi.e -7
pushloc.v local.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]local.overlay
pushi.e -4
cmp.i.v NEQ
bf [45]

:[44]
pushi.e -7
pushloc.v local.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]local.overlay
pushi.e -7
pushloc.v local.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]local.overlay
pushi.e -7
pushloc.v local.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]local.overlay
call.i scr_draw_background_ps4(argc=3)
popz.v

:[45]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [42]

:[46]
pushloc.v local.border_id
pushi.e 3
cmp.i.v EQ
bf [135]

:[47]
pushglb.v global.currentroom
pop.v.v local.room_id
pushloc.v local.room_id
pushi.e 4
cmp.i.v GTE
bf [49]

:[48]
pushloc.v local.room_id
pushi.e 43
cmp.i.v LTE
b [50]

:[49]
push.e 0

:[50]
bt [59]

:[51]
pushbltn.v self.room
pushi.e 1
cmp.i.v GTE
bf [53]

:[52]
pushbltn.v self.room
pushi.e 3
cmp.i.v LTE
b [54]

:[53]
push.e 0

:[54]
bt [59]

:[55]
pushbltn.v self.room
pushi.e 288
cmp.i.v GTE
bf [57]

:[56]
pushbltn.v self.room
pushi.e 289
cmp.i.v LTE
b [58]

:[57]
push.e 0

:[58]
b [60]

:[59]
push.e 1

:[60]
bf [62]

:[61]
pushi.e 4
pop.v.i local.border_id

:[62]
pushloc.v local.room_id
pushi.e 44
cmp.i.v GTE
bf [64]

:[63]
pushloc.v local.room_id
pushi.e 81
cmp.i.v LTE
b [65]

:[64]
push.e 0

:[65]
bt [71]

:[66]
pushloc.v local.room_id
pushi.e 311
cmp.i.v EQ
bt [71]

:[67]
pushloc.v local.room_id
pushi.e 265
cmp.i.v GTE
bf [69]

:[68]
pushloc.v local.room_id
pushi.e 266
cmp.i.v LTE
b [70]

:[69]
push.e 0

:[70]
b [72]

:[71]
push.e 1

:[72]
bf [74]

:[73]
pushi.e 5
pop.v.i local.border_id

:[74]
pushloc.v local.room_id
pushi.e 82
cmp.i.v GTE
bf [76]

:[75]
pushloc.v local.room_id
pushi.e 136
cmp.i.v LTE
b [77]

:[76]
push.e 0

:[77]
bt [80]

:[78]
pushloc.v local.room_id
pushi.e 312
cmp.i.v EQ
bt [80]

:[79]
pushloc.v local.room_id
pushi.e 315
cmp.i.v EQ
b [81]

:[80]
push.e 1

:[81]
bf [83]

:[82]
pushi.e 6
pop.v.i local.border_id

:[83]
pushloc.v local.room_id
pushi.e 137
cmp.i.v GTE
bf [85]

:[84]
pushloc.v local.room_id
pushi.e 215
cmp.i.v LTE
b [86]

:[85]
push.e 0

:[86]
bt [93]

:[87]
pushloc.v local.room_id
pushi.e 313
cmp.i.v EQ
bt [93]

:[88]
pushloc.v local.room_id
pushi.e 314
cmp.i.v EQ
bt [93]

:[89]
pushloc.v local.room_id
pushi.e 242
cmp.i.v GTE
bf [91]

:[90]
pushloc.v local.room_id
pushi.e 243
cmp.i.v LTE
b [92]

:[91]
push.e 0

:[92]
b [94]

:[93]
push.e 1

:[94]
bf [96]

:[95]
pushi.e 7
pop.v.i local.border_id

:[96]
pushloc.v local.room_id
pushi.e 216
cmp.i.v GTE
bf [98]

:[97]
pushloc.v local.room_id
pushi.e 240
cmp.i.v LTE
b [99]

:[98]
push.e 0

:[99]
bf [101]

:[100]
pushi.e 8
pop.v.i local.border_id

:[101]
pushloc.v local.room_id
pushi.e 244
cmp.i.v GTE
bf [103]

:[102]
pushloc.v local.room_id
pushi.e 263
cmp.i.v LTE
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
pushi.e 9
pop.v.i local.border_id

:[106]
pushloc.v local.room_id
pushi.e 136
cmp.i.v EQ
bt [113]

:[107]
pushloc.v local.room_id
pushi.e 213
cmp.i.v EQ
bt [113]

:[108]
pushloc.v local.room_id
pushi.e 215
cmp.i.v EQ
bt [113]

:[109]
pushloc.v local.room_id
pushi.e 242
cmp.i.v EQ
bt [113]

:[110]
pushloc.v local.room_id
pushi.e 243
cmp.i.v EQ
bt [113]

:[111]
pushloc.v local.room_id
pushi.e 316
cmp.i.v EQ
bt [113]

:[112]
pushloc.v local.room_id
pushi.e 335
cmp.i.v EQ
b [114]

:[113]
push.e 1

:[114]
bf [116]

:[115]
push.d 3.5
pop.v.d local.border_id

:[116]
pushi.e -5
pushi.e 479
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [121]

:[117]
pushloc.v local.room_id
pushi.e 244
cmp.i.v EQ
bt [119]

:[118]
pushloc.v local.room_id
pushi.e 245
cmp.i.v EQ
b [120]

:[119]
push.e 1

:[120]
b [122]

:[121]
push.e 0

:[122]
bf [124]

:[123]
push.d 3.5
pop.v.d local.border_id

:[124]
pushloc.v local.border_id
pushglb.v global.screen_border_state
cmp.v.v NEQ
bf [131]

:[125]
pushglb.v global.screen_border_state
pushi.e 0
cmp.i.v NEQ
bf [130]

:[126]
pushglb.v global.screen_border_dynamic_fade_id
pushloc.v local.border_id
cmp.v.v EQ
bf [128]

:[127]
pushi.e 1
pushglb.v global.screen_border_dynamic_fade_level
sub.v.i
pop.v.v global.screen_border_dynamic_fade_level
b [129]

:[128]
pushi.e 1
pop.v.i global.screen_border_dynamic_fade_level

:[129]
pushglb.v global.screen_border_state
pop.v.v global.screen_border_dynamic_fade_id

:[130]
pushloc.v local.border_id
pop.v.v global.screen_border_state

:[131]
pushglb.v global.screen_border_dynamic_fade_level
pushi.e 0
cmp.i.v GT
bf [135]

:[132]
pushi.e 30
pop.v.i local.fade_time
push.v global.screen_border_dynamic_fade_level
pushi.e 1
conv.i.d
pushloc.v local.fade_time
div.v.d
sub.v.v
pop.v.v global.screen_border_dynamic_fade_level
pushglb.v global.screen_border_dynamic_fade_level
pushi.e 0
cmp.i.v GT
bf [134]

:[133]
pushglb.v global.screen_border_dynamic_fade_id
call.i scr_draw_screen_border(argc=1)
popz.v
pushi.e 1
pushglb.v global.screen_border_dynamic_fade_level
sub.v.i
call.i draw_set_alpha(argc=1)
popz.v
b [135]

:[134]
pushi.e 0
pop.v.i global.screen_border_dynamic_fade_id
pushi.e 0
pop.v.i global.screen_border_dynamic_fade_level

:[135]
pushloc.v local.border_id
push.d 3.5
cmp.d.v EQ
bf [137]

:[136]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
call.i window_get_height(argc=0)
pushi.e 1
sub.i.v
call.i window_get_width(argc=0)
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[137]
pushloc.v local.border_id
pushi.e 4
cmp.i.v EQ
bf [142]

:[138]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [140]

:[139]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 205
conv.i.v
call.i scr_draw_background_ps4(argc=3)
popz.v

:[140]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [142]

:[141]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 206
conv.i.v
call.i draw_background(argc=3)
popz.v

:[142]
pushloc.v local.border_id
pushi.e 5
cmp.i.v EQ
bf [147]

:[143]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [145]

:[144]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 243
conv.i.v
call.i scr_draw_background_ps4(argc=3)
popz.v

:[145]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [147]

:[146]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 244
conv.i.v
call.i draw_background(argc=3)
popz.v

:[147]
pushloc.v local.border_id
pushi.e 6
cmp.i.v EQ
bf [152]

:[148]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [150]

:[149]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 245
conv.i.v
call.i scr_draw_background_ps4(argc=3)
popz.v

:[150]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [152]

:[151]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 246
conv.i.v
call.i draw_background(argc=3)
popz.v

:[152]
pushloc.v local.border_id
pushi.e 7
cmp.i.v EQ
bf [157]

:[153]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [155]

:[154]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 199
conv.i.v
call.i scr_draw_background_ps4(argc=3)
popz.v

:[155]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [157]

:[156]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 200
conv.i.v
call.i draw_background(argc=3)
popz.v

:[157]
pushloc.v local.border_id
pushi.e 8
cmp.i.v EQ
bf [162]

:[158]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [160]

:[159]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 197
conv.i.v
call.i scr_draw_background_ps4(argc=3)
popz.v

:[160]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [162]

:[161]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 198
conv.i.v
call.i draw_background(argc=3)
popz.v

:[162]
pushloc.v local.border_id
pushi.e 9
cmp.i.v EQ
bf [167]

:[163]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [165]

:[164]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 241
conv.i.v
call.i scr_draw_background_ps4(argc=3)
popz.v

:[165]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [167]

:[166]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 242
conv.i.v
call.i draw_background(argc=3)
popz.v

:[167]
pushloc.v local.border_id
pushi.e 10
cmp.i.v EQ
bf [172]

:[168]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [170]

:[169]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 203
conv.i.v
call.i scr_draw_background_ps4(argc=3)
popz.v

:[170]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [172]

:[171]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 204
conv.i.v
call.i draw_background(argc=3)
popz.v

:[172]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_enable_alphablend(argc=1)
popz.v

:[end]
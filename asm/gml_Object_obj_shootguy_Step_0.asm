.localvar 0 arguments

:[0]
push.v self.buffer
pushi.e 1
sub.i.v
pop.v.v self.buffer
push.v self.restart
pushi.e 1
sub.i.v
pop.v.v self.restart
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.win
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [52]

:[4]
push.v self.buffer
pushi.e 0
cmp.i.v LTE
bf [52]

:[5]
pushi.e 0
pop.v.i self.blt
pushi.e 1245
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 1
pop.v.i self.blt

:[7]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [10]

:[8]
push.v self.ammo
pushi.e 0
cmp.i.v GT
bf [10]

:[9]
push.v self.buffer
pushi.e 0
cmp.i.v LTE
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.v self.ammo
pushi.e 1
sub.i.v
pop.v.v self.ammo
pushi.e 4
pop.v.i self.buffer
pushi.e 1245
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[13]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [16]

:[14]
push.v self.blt
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.v self.buffer
pushi.e 0
cmp.i.v LTE
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 4
pop.v.i self.buffer
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[19]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [22]

:[20]
push.v self.blt
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.v self.buffer
pushi.e 0
cmp.i.v LTE
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 4
pop.v.i self.buffer
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[25]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [28]

:[26]
push.v self.blt
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
push.v self.buffer
pushi.e 0
cmp.i.v LTE
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 4
pop.v.i self.buffer
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[31]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [34]

:[32]
push.v self.blt
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
push.v self.buffer
pushi.e 0
cmp.i.v LTE
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 4
pop.v.i self.buffer
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[37]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [40]

:[38]
push.v self.buffer
pushi.e 0
cmp.i.v LTE
bf [40]

:[39]
pushi.e 1245
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 0
pop.v.i self.active
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 12
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 15
pop.v.i self.buffer
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[43]
push.v self.ammo
pushi.e 0
cmp.i.v EQ
bf [47]

:[44]
pushi.e 1245
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [47]

:[45]
push.v self.buffer
pushi.e 0
cmp.i.v LTE
bf [47]

:[46]
push.v self.active
pushi.e 1
cmp.i.v EQ
b [48]

:[47]
push.e 0

:[48]
bf [52]

:[49]
pushi.e 1241
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [52]

:[50]
push.v 1241.defeat
pushi.e 0
cmp.i.v EQ
bf [52]

:[51]
pushi.e 20
pop.v.i self.restart
pushi.e 100
conv.i.v
call.i random(argc=1)
pop.v.v self.rstype
pushi.e 20
pop.v.i self.buffer
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 12
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[52]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
push.v self.win
pushi.e 0
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 0
pop.v.i self.ammo
pushi.e 10
pop.v.i self.buffer
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.myinteract
pushi.e 2
pop.v.i global.facing
pushi.e 1
pop.v.i self.active

:[57]
pushi.e 0
pop.v.i self.snd
push.v self.win
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
push.v self.active
pushi.e 1
cmp.i.v EQ
b [60]

:[59]
push.e 0

:[60]
bf [end]

:[61]
push.v self.wintimer
pushi.e 1
add.i.v
pop.v.v self.wintimer
push.v self.wintimer
pushi.e 50
cmp.i.v EQ
bf [63]

:[62]
pushi.e 26
conv.i.v
call.i snd_play(argc=1)
popz.v

:[63]
push.v self.wintimer
pushi.e 100
cmp.i.v GT
bf [end]

:[64]
pushbltn.v self.room
pushi.e 152
cmp.i.v EQ
bf [66]

:[65]
pushi.e 1
pushi.e -5
pushi.e 375
pop.v.i [array]global.flag

:[66]
pushbltn.v self.room
pushi.e 150
cmp.i.v EQ
bf [68]

:[67]
pushi.e 1
pushi.e -5
pushi.e 374
pop.v.i [array]global.flag

:[68]
pushbltn.v self.room
pushi.e 173
cmp.i.v EQ
bf [70]

:[69]
pushi.e 1
pushi.e -5
pushi.e 399
pop.v.i [array]global.flag

:[70]
pushbltn.v self.room
pushi.e 175
cmp.i.v EQ
bf [72]

:[71]
pushi.e 1
pushi.e -5
pushi.e 400
pop.v.i [array]global.flag

:[72]
pushbltn.v self.room
pushi.e 205
cmp.i.v EQ
bf [74]

:[73]
pushi.e 1
pushi.e -5
pushi.e 418
pop.v.i [array]global.flag

:[74]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.wintimer
pushi.e 2
pop.v.i self.win
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i self.active
call.i scr_tempsave(argc=0)
popz.v

:[end]
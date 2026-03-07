.localvar 0 arguments

:[0]
push.v self.doomcon
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
pushglb.v global.faceemotion
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.image_index

:[3]
pushglb.v global.faceemotion
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
pushi.e 2
pop.v.i self.image_index

:[5]
pushglb.v global.faceemotion
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.image_index

:[7]
push.v self.writing
pushi.e 1
cmp.i.v EQ
bf [10]

:[8]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.writing
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[10]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [18]

:[11]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v 784.stringno
push.v self.flag20_laststr
cmp.v.v NEQ
b [14]

:[13]
push.e 0

:[14]
bf [17]

:[15]
push.v 784.stringno
pop.v.v self.flag20_laststr
push.v self.image_index
pushi.e 14
cmp.i.v LT
bf [17]

:[16]
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index

:[17]
b [19]

:[18]
pushi.e -1
pop.v.i self.flag20_laststr

:[19]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [22]

:[20]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1
pop.v.i self.fader
pushi.e 17
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 50
conv.i.v
call.i snd_play(argc=1)
popz.v

:[22]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [24]

:[23]
pushi.e 73
pop.v.i global.typer
push.s "obj_flowey_wilt_309"@12921
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 50
conv.i.v
pushi.e 120
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 19
pop.v.i self.con
pushi.e 210
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[24]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [26]

:[25]
pushi.e 6
pop.v.i self.doomcon
pushi.e 10
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e 21
pop.v.i self.con

:[26]
push.v self.fader
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.v self.image_alpha
push.d 0.01
sub.d.v
pop.v.v self.image_alpha

:[28]
push.v self.doomcon
push.d 0.5
cmp.d.v EQ
bf [30]

:[29]
push.d 0.6
pop.v.d self.doomcon
pushi.e 8
pop.v.i self.shudder
pushi.e 1
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[30]
push.v self.doomcon
pushi.e 1
cmp.i.v EQ
bf [34]

:[31]
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e 1
pushi.e -5
pushi.e 475
pop.v.i [array]global.flag
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "K"@47576
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.K
push.v self.K
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
pushi.e 1
conv.i.v
push.s "K"@47576
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v

:[33]
pushi.e 2
conv.i.v
push.s "E"@47762
conv.s.v
push.s "FFFFF"@47763
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 0
pop.v.i global.msc
push.s "obj_flowey_wilt_348"@12923
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 71
pop.v.i global.typer
pushi.e 784
conv.i.v
push.v self.y
pushi.e 30
sub.i.v
push.v self.x
pushi.e 60
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.doomcounter
pushi.e 2
pop.v.i self.doomcon
pushi.e 673
pop.v.i self.sprite_index
push.d 0.3
pop.v.d self.image_speed

:[34]
push.v self.doomcon
pushi.e 2
cmp.i.v EQ
bf [37]

:[35]
push.v self.image_speed
push.d 0.0025
add.d.v
pop.v.v self.image_speed
push.v self.image_speed
push.d 0.5
cmp.d.v GTE
bf [37]

:[36]
pushi.e 3
pop.v.i self.doomcon

:[37]
push.v self.doomcon
pushi.e 3
cmp.i.v EQ
bf [40]

:[38]
push.v self.image_speed
push.d 0.004
sub.d.v
pop.v.v self.image_speed
push.v self.image_speed
pushi.e 0
cmp.i.v LTE
bf [40]

:[39]
pushi.e 4
pop.v.i self.doomcon
pushi.e 674
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 80
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[40]
push.v self.doomcon
pushi.e 5
cmp.i.v EQ
bf [43]

:[41]
push.d 0.2
pop.v.d self.image_speed
push.v self.image_index
pushi.e 6
cmp.i.v GTE
bf [43]

:[42]
pushi.e 6
pop.v.i self.image_index
pushi.e 6
pop.v.i self.doomcon
pushi.e 150
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.image_speed

:[43]
push.v self.doomcon
pushi.e 7
cmp.i.v EQ
bf [45]

:[44]
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 8
pop.v.i self.doomcon
pushi.e 12
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm

:[45]
push.v self.doomcon
pushi.e 9
cmp.i.v EQ
bf [end]

:[46]
pushi.e 0
pop.v.i global.entrance
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 2
conv.i.v
push.s "E"@47762
conv.s.v
push.s "FFFFF"@47763
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 238
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]
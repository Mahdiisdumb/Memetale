.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.d 0.1
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.con
push.d 1.1
cmp.d.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i 409.myblend
pushi.e 0
pop.v.i 409.myalpha
pushi.e 0
pop.v.i 409.sineron
pushi.e 1365
conv.i.v
pushi.e -100
conv.i.v
pushi.e 10
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.n
pushi.e 1
push.v self.n
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 577
push.v self.n
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.n
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.n
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.n
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 2
push.v self.n
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 1365
conv.i.v
pushi.e -100
conv.i.v
pushi.e 630
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.n2
pushi.e 1
push.v self.n2
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 577
push.v self.n2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -2
push.v self.n2
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.n2
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.n2
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 2
push.v self.n2
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 11
push.v self.n
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 11
push.v self.n2
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
push.v self.n
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.n2
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 3
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[6]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [8]

:[7]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
push.v self.n
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 1
push.v self.n2
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 1
pop.v.i self.cloud
pushi.e 5
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.alpha

:[8]
push.v self.cloud
pushi.e 1
cmp.i.v EQ
bf [14]

:[9]
push.v self.cltimer
pushi.e 1
sub.i.v
pop.v.v self.cltimer
push.v self.cltimer
pushi.e 1
cmp.i.v LT
bf [14]

:[10]
pushi.e 405
conv.i.v
pushi.e 0
conv.i.v
pushi.e 160
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ccc
push.v self.otr
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.otr
push.v self.ccc
conv.v.i
push.v [stacktop]self.hspeed
neg.v
push.v self.ccc
conv.v.i
pop.v.v [stacktop]self.hspeed
b [13]

:[12]
pushi.e 0
pop.v.i self.otr

:[13]
pushi.e 9
pop.v.i self.cltimer

:[14]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [19]

:[15]
push.v 409.myalpha
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
push.d 0.85
conv.d.v
push.d 0.7
conv.d.v
push.v self.presong
call.i caster_loop(argc=3)
popz.v

:[17]
push.v 409.myalpha
push.d 0.015
add.d.v
pop.v.v 409.myalpha
push.v 409.myalpha
pushi.e 1
cmp.i.v GTE
bf [19]

:[18]
pushi.e 7
pop.v.i self.con

:[19]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [21]

:[20]
pushi.e 0
pop.v.i global.msc
pushi.e 51
pop.v.i global.typer
push.s "obj_mett_bossintro_174"@17127
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mett_bossintro_175"@17129
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mett_bossintro_176"@17131
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mett_bossintro_177"@17133
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mett_bossintro_178"@17135
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mett_bossintro_179"@17137
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mett_bossintro_180"@17139
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 250
conv.i.v
pushi.e 220
conv.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e -6000
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e -6001
push.v self.writer
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.blcon
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 20
add.i.v
pop.i.v [stacktop]self.y
push.d 7.1
pop.v.d self.con
push.d 0.7
pop.v.d self.vol

:[21]
push.v self.con
push.d 7.1
cmp.d.v EQ
bf [23]

:[22]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [29]

:[25]
push.v 784.stringno
pushi.e 6
cmp.i.v GT
bf [29]

:[26]
push.v self.vol
pushi.e 0
cmp.i.v GT
bf [28]

:[27]
push.v self.vol
push.d 0.01
sub.d.v
pop.v.v self.vol

:[28]
push.v self.vol
push.v self.presong
call.i caster_set_volume(argc=2)
popz.v

:[29]
push.v self.con
push.d 7.1
cmp.d.v EQ
bf [31]

:[30]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 1
pop.v.i self.flasher
pushi.e 0
pop.v.i self.flashamt
pushi.e 8
pop.v.i self.con

:[34]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [36]

:[35]
pushi.e 10
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[36]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [38]

:[37]
push.s "obj_mett_bossintro_213"@17141
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 60
conv.i.v
push.v 409.x
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 12
pop.v.i self.con

:[38]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [40]

:[39]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [end]

:[42]
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.monster
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.monster
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstance
pushi.e 300
pushenv [44]

:[43]
call.i instance_destroy(argc=0)
popz.v

:[44]
popenv [43]
pushi.e 51
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
pushi.e 0
pop.v.i global.msc
pushi.e 10
pop.v.i 409.depth
pushi.e 404
conv.i.v
pushi.e 60
conv.i.v
pushi.e 210
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.monsterinstance
push.s "scr_battlegroup_1221"@5254
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.d 0.95
conv.d.v
pushi.e 1
conv.i.v
pushglb.v global.batmusic
call.i caster_loop(argc=3)
popz.v
pushi.e 3
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight
pushi.e 0
pop.v.i global.bmenuno
pushi.e 13
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]
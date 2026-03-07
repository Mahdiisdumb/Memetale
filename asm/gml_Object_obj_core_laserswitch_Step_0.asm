.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -6
pop.v.i 1283.hspeed
pushi.e 1
pop.v.i 1283.active
pushi.e 6
pop.v.i 1283.rememberhspeed
pushi.e 1
pop.v.i self.con
pushi.e 1953
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.fader
pushi.e 1185
pushenv [6]

:[5]
pushi.e 1
pop.v.i self.canttalk

:[6]
popenv [5]
pushi.e 1185
conv.i.v
pushi.e 80
conv.i.v
pushi.e 160
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ff2
pushi.e 5
push.v self.ff2
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 180
pop.v.i global.plot

:[7]
push.v self.fader
pushi.e 1
cmp.i.v EQ
bf [19]

:[8]
push.v self.ff
call.i instance_exists(argc=1)
conv.v.b
bf [19]

:[9]
push.v self.ff
conv.v.i
pushenv [15]

:[10]
pushi.e 1
pop.v.i self.canttalk
push.v self.solid1
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[11]
push.v self.solid1
conv.v.i
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]

:[14]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[15]
popenv [10]
push.v self.ff
conv.v.i
push.v [stacktop]self.image_alpha
push.d 0.1
cmp.d.v LT
bf [19]

:[16]
push.v self.ff
conv.v.i
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]

:[19]
push.v self.pcon
pushi.e 40
cmp.i.v EQ
bf [28]

:[20]
push.v 1576.x
pushi.e 540
cmp.i.v GT
bf [23]

:[21]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
push.v self.pcon
pushi.e 40
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [28]

:[25]
pushi.e 1
pop.v.i global.interact
pushi.e 41
pop.v.i self.pcon
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_core_laserswitch_118"@11309
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_core_laserswitch_119"@11310
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_core_laserswitch_120"@11312
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_core_laserswitch_121"@11314
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_core_laserswitch_122"@11315
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_core_laserswitch_123"@11317
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_core_laserswitch_124"@11319
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_core_laserswitch_125"@11320
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_core_laserswitch_126"@11321
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.v self.remhp
pushglb.v global.hp
cmp.v.v GT
bf [27]

:[26]
push.s "obj_core_laserswitch_130"@11322
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_core_laserswitch_131"@11323
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_core_laserswitch_132"@11325
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_core_laserswitch_133"@11327
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_core_laserswitch_134"@11328
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_core_laserswitch_135"@11330
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_core_laserswitch_136"@11331
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_core_laserswitch_137"@11332
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_core_laserswitch_138"@11333
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg

:[27]
call.i scr_regulartext(argc=0)
popz.v

:[28]
push.v self.pcon
pushi.e 41
cmp.i.v EQ
bf [30]

:[29]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [end]

:[32]
pushi.e 181
pop.v.i global.plot
pushi.e 42
pop.v.i self.pcon
pushi.e 0
pop.v.i global.interact

:[end]
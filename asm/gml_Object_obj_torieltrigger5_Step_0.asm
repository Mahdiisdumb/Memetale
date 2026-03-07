.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.conversation
push.v self.toriel
conv.v.i
pushenv [6]

:[5]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 16
conv.i.v
call.i path_start(argc=4)
popz.v

:[6]
popenv [5]
pushi.e 1
pop.v.i self.fademusicout

:[7]
pushi.e 863
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[8]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
push.v 863.path_position
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 1190
push.v self.toriel
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.toriel
conv.v.i
pop.v.i [stacktop]self.phone
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 3
pop.v.i self.conversation

:[13]
pushi.e 863
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [27]

:[14]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
bf [16]

:[15]
push.v self.toriel
conv.v.i
push.v [stacktop]self.path_position
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [27]

:[18]
push.v self.toriel
conv.v.i
pushenv [20]

:[19]
call.i path_end(argc=0)
popz.v

:[20]
popenv [19]
pushi.e 5
pop.v.i self.conversation
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
push.s "music/toriel.ogg"@2613
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.torielsong
push.d 0.86
conv.d.v
push.d 0.7
conv.d.v
push.v self.torielsong
call.i caster_loop(argc=3)
popz.v
push.s "obj_torieltrigger5_185"@27596
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v EQ
bf [22]

:[21]
push.s "obj_torieltrigger5_186"@27598
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[22]
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [24]

:[23]
push.s "obj_torieltrigger5_187"@27600
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[24]
pushglb.v global.hp
pushi.e 4
cmp.i.v LT
bf [26]

:[25]
push.s "obj_torieltrigger5_189"@27602
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[26]
push.s "obj_torieltrigger5_190"@27604
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_torieltrigger5_191"@27606
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_torieltrigger5_192"@27608
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_torieltrigger5_193"@27610
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_torieltrigger5_194"@27612
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushglb.v global.maxhp
pop.v.v global.hp
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[27]
pushi.e 863
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [35]

:[28]
push.v self.conversation
pushi.e 5
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
bf [35]

:[32]
pushi.e 6
pop.v.i self.conversation
pushi.e 863
pushenv [34]

:[33]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 19
conv.i.v
call.i path_start(argc=4)
popz.v

:[34]
popenv [33]
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushi.e 3
pop.v.i self.fademusicout
pushi.e 17
pop.v.i global.plot
push.d 0.8
pop.v.d self.torvolume

:[35]
push.v self.fademusicout
pushi.e 1
cmp.i.v EQ
bf [40]

:[36]
push.v self.volume
pushi.e 0
cmp.i.v GT
bf [38]

:[37]
push.v self.volume
push.d 0.02
sub.d.v
pop.v.v self.volume

:[38]
push.v self.volume
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v
push.v self.volume
push.d 0.02
cmp.d.v LT
bf [40]

:[39]
pushi.e 2
pop.v.i self.fademusicout

:[40]
push.v self.fademusicout
pushi.e 3
cmp.i.v EQ
bf [end]

:[41]
push.v self.torvolume
push.d 0.04
sub.d.v
pop.v.v self.torvolume
push.v self.volume
push.d 0.9
cmp.d.v LT
bf [43]

:[42]
push.v self.volume
push.d 0.06
add.d.v
pop.v.v self.volume

:[43]
push.v self.torvolume
push.v self.torielsong
call.i caster_set_volume(argc=2)
popz.v
push.v self.volume
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v
push.v self.torvolume
push.d 0.1
cmp.d.v LT
bf [end]

:[44]
push.v self.torielsong
call.i caster_free(argc=1)
popz.v
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]
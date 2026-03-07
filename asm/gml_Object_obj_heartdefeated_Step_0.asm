.localvar 0 arguments

:[0]
push.v self.dingus
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
push.v self.currentvol
push.d 0.02
sub.d.v
pop.v.v self.currentvol
push.v self.currentvol
push.v self.gameoversong
call.i caster_set_volume(argc=2)
popz.v

:[2]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
push.v self.heartcon
pushi.e 5
cmp.i.v EQ
bf [end]

:[5]
push.v self.hearttimer
pushi.e 1
add.i.v
pop.v.v self.hearttimer
pushi.e -5
pushi.e 502
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
bf [22]

:[6]
push.v self.hearttimer
pushi.e 80
cmp.i.v GT
bf [8]

:[7]
push.v self.hearttimer
pushi.e 120
cmp.i.v LT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.v self.thisx
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.thisy
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.y

:[11]
push.v self.hearttimer
pushi.e 120
cmp.i.v EQ
bf [13]

:[12]
push.v self.thisx
pushi.e 2
add.i.v
pop.v.v self.x
push.v self.thisy
pop.v.v self.y
pushi.e 31
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 46
pop.v.i self.sprite_index

:[13]
push.v self.hearttimer
pushi.e 150
cmp.i.v EQ
bf [15]

:[14]
pushi.e 61
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_heartdefeated_343"@14320
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 784
conv.i.v
pushi.e 100
conv.i.v
pushi.e 320
pushi.e -5
pushi.e 0
push.v [array]global.msg
call.i string_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
sub.v.i
call.i instance_create(argc=3)
popz.v

:[15]
push.v self.hearttimer
pushi.e 220
cmp.i.v EQ
bf [17]

:[16]
pushi.e 558
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[17]
push.v self.hearttimer
pushi.e 254
cmp.i.v EQ
bf [21]

:[18]
pushi.e 0
pop.v.i global.border
pushglb.v global.maxhp
pop.v.v global.hp
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 154
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]
pushi.e 306
conv.i.v
call.i room_goto(argc=1)
popz.v

:[21]
b [end]

:[22]
push.v self.hearttimer
pushi.e 20
cmp.i.v GT
bf [24]

:[23]
push.v self.hearttimer
pushi.e 40
cmp.i.v LT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
push.v self.thisx
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.thisy
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.y

:[27]
push.v self.hearttimer
pushi.e 40
cmp.i.v EQ
bf [29]

:[28]
push.v self.thisx
pushi.e 2
add.i.v
pop.v.v self.x
push.v self.thisy
pop.v.v self.y
pushi.e 31
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 46
pop.v.i self.sprite_index

:[29]
push.v self.hearttimer
pushi.e 60
cmp.i.v EQ
bf [31]

:[30]
pushi.e 558
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[31]
push.v self.hearttimer
pushi.e 94
cmp.i.v EQ
bf [end]

:[32]
pushi.e 0
pop.v.i global.border
pushglb.v global.maxhp
pop.v.v global.hp
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 154
pushenv [34]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[34]
popenv [33]
pushi.e 306
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]
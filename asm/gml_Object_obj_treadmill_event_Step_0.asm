.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.interact

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "obj_treadmill_event_103"@28175
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_treadmill_event_104"@28177
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_treadmill_event_105"@28179
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_treadmill_event_106"@28181
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_treadmill_event_107"@28183
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_treadmill_event_108"@28185
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_treadmill_event_109"@28187
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_treadmill_event_110"@28189
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_treadmill_event_111"@28191
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_treadmill_event_112"@28193
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_treadmill_event_113"@28195
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 1131
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 0
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 3
pop.v.i self.con

:[4]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 5
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 1402
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.5
push.v self.pap
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 4
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[9]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [end]

:[10]
push.d 0.25
push.v self.mc
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.mc
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 2
add.i.v
pop.i.v [stacktop]self.y
push.v self.mc
conv.v.i
push.v [stacktop]self.y
push.v 1576.y
cmp.v.v GTE
bf [end]

:[11]
pushi.e 1
pop.v.i 1576.visible
push.v self.mc
conv.v.i
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]
pushi.e 6
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.s "music/muscle.ogg"@2637
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
b [16]

:[15]
push.s "music/reunited.ogg"@2782
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong

:[16]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[end]
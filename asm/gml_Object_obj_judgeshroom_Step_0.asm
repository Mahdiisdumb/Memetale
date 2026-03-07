.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
push.v self.buffer
pushi.e 1
sub.i.v
pop.v.v self.buffer
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.buffer
pushi.e 0
cmp.i.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.myinteract

:[5]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [9]

:[6]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [9]

:[7]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1053
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index

:[12]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [15]

:[13]
push.v self.image_index
push.d 0.25
add.d.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 4
cmp.i.v GTE
bf [15]

:[14]
push.s "obj_judgeshroom_187"@14660
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 2
pop.v.i self.con
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 134
conv.i.v
call.i caster_loop(argc=3)
popz.v
push.v self.x
pop.v.v self.remx
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.image_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 1052
pop.v.i self.sprite_index

:[15]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.remx
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.x

:[17]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [26]

:[18]
push.s "obj_judgeshroom_211"@14662
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_judgeshroom_213"@14664
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_judgeshroom_214"@14666
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [20]

:[19]
push.s "obj_judgeshroom_218"@14668
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_judgeshroom_219"@14670
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[20]
pushglb.v global.kills
pushi.e 0
cmp.i.v GT
bf [23]

:[21]
push.s "obj_judgeshroom_224"@14672
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [23]

:[22]
push.s "obj_judgeshroom_226"@14674
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[23]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_judgeshroom_231"@14676
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_judgeshroom_232"@14678
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_judgeshroom_233"@14680
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[25]
call.i scr_regulartext(argc=0)
popz.v
pushi.e 10
pop.v.i self.con

:[26]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [28]

:[27]
pushi.e 2
pop.v.i self.image_index
pushi.e 8
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[28]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i self.image_index
pushi.e 6
pop.v.i self.con
pushi.e 1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[30]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [32]

:[31]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [40]

:[34]
pushi.e 134
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
push.v self.x
push.v self.remx
cmp.v.v LT
bf [36]

:[35]
push.v self.x
pushi.e 1
add.i.v
pop.v.v self.x

:[36]
push.v self.x
push.v self.remx
cmp.v.v GT
bf [38]

:[37]
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x

:[38]
push.v self.x
push.v self.remx
sub.v.v
call.i abs(argc=1)
push.d 1.5
cmp.d.v LT
bf [40]

:[39]
pushi.e 0
pop.v.i self.image_speed
push.v self.remx
pop.v.v self.x
pushi.e 1051
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 4
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[40]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [42]

:[41]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [end]

:[44]
push.v self.talkedto
pushi.e 1
add.i.v
pop.v.v self.talkedto
pushi.e 1053
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 5
pop.v.i self.buffer
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v

:[end]
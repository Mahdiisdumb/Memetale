.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.myinteract

:[2]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [8]

:[3]
push.v self.mydialoguer
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract

:[8]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 2
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact

:[13]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
pop.v.i global.interact

:[15]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
push.v self.lsprite
pop.v.v self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e -3
pop.v.i self.hspeed
pushi.e 4
pop.v.i self.con
pushi.e 14
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[17]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [19]

:[18]
push.v self.dsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.hspeed
pushi.e 3
pop.v.i self.vspeed
pushi.e 6
pop.v.i self.con
pushi.e 18
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 3
pop.v.i global.facing

:[19]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [21]

:[20]
push.v self.rsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i global.facing
pushi.e 3
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 8
pop.v.i self.con
pushi.e 17
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[21]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.hspeed
pushi.e 10
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[23]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [25]

:[24]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i global.facing
push.v self.usprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i global.msc
pushi.e 3
pop.v.i global.facechoice
push.s "obj_sans_sentry2_306"@23785
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 12
pop.v.i self.con

:[25]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [27]

:[26]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [34]

:[29]
pushi.e 807
pushenv [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [30]
pushi.e 813
pushenv [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
popenv [32]
pushi.e 1
pop.v.i global.facing
pushi.e 3
pop.v.i self.hspeed
push.v self.rsprite
pop.v.v self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 2
pop.v.i 1576.hspeed
pushi.e 1
pop.v.i 1576.vspeed
push.d 0.334
pop.v.d 1576.image_speed
pushi.e 13
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[34]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [end]

:[35]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 15
pop.v.i self.con

:[end]
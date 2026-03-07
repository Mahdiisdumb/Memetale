.localvar 0 arguments

:[0]
push.v self.bonetalk4
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.s "obj_papyrusboss_270"@21118
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.s "obj_papyrusboss_272"@21120
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
pushi.e 22
pop.v.i global.typer
pushi.e 188
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
push.v self.blcon_textofs
add.v.v
call.i instance_create(argc=3)
pop.v.v self.blconwdS
pushi.e 2
pop.v.i self.bonetalk4

:[4]
push.v self.bonetalk4
pushi.e 3
cmp.i.v EQ
bf [8]

:[5]
push.s "obj_papyrusboss_282"@21122
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_papyrusboss_285"@21124
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrusboss_286"@21126
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrusboss_287"@21128
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrusboss_288"@21130
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrusboss_289"@21132
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[7]
pushi.e 22
pop.v.i global.typer
pushi.e 188
conv.i.v
push.v self.y
pushi.e 104
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
push.v self.blcon_textofs
add.v.v
call.i instance_create(argc=3)
pop.v.v self.blconwdS
push.d 3.5
pop.v.d self.bonetalk4

:[8]
pushi.e 2
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
push.v self.bonetalk4
pushi.e 5
cmp.i.v EQ
bf [10]

:[9]
pushi.e 6
pop.v.i self.bonetalk4
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e -2
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm

:[10]
push.v self.bonetalk4
pushi.e 4
cmp.i.v EQ
bf [12]

:[11]
push.v global.xp
pushi.e 200
add.i.v
pop.v.v global.xp
pushi.e 7
push.v self.dh
conv.v.i
pop.v.i [stacktop]self.c
push.v global.kills
pushi.e 1
add.i.v
pop.v.v global.kills
pushi.e 150
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
pushi.e 5
pop.v.i self.bonetalk4

:[12]
push.v self.bonetalk4
push.d 3.5
cmp.d.v EQ
bf [14]

:[13]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [19]

:[16]
push.v self.blcon
conv.v.i
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]
pushi.e 4
pop.v.i self.bonetalk4
pushi.e 100
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm

:[19]
push.v self.bonetalk4
push.d 2.5
cmp.d.v EQ
bf [21]

:[20]
pushi.e 5
push.v self.dh
conv.v.i
pop.v.i [stacktop]self.c
pushi.e 3
pop.v.i self.bonetalk4
pushi.e 80
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm

:[21]
push.v self.bonetalk4
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [28]

:[25]
pushi.e 4
push.v self.dh
conv.v.i
pop.v.i [stacktop]self.c
pushi.e 4
push.v self.db
conv.v.i
pop.v.i [stacktop]self.c
push.v self.blcon
conv.v.i
pushenv [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
popenv [26]
pushi.e 30
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
push.d 2.5
pop.v.d self.bonetalk4

:[28]
push.v self.bonetalk4
pushi.e 0
cmp.i.v EQ
bf [end]

:[29]
pushi.e 1
push.v self.dh
conv.v.i
pop.v.i [stacktop]self.c
pushi.e 60
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.bonetalk4

:[end]
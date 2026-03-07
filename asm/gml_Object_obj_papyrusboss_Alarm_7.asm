.localvar 0 arguments

:[0]
push.v self.bonetalk
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_papyrusboss_456"@21146
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrusboss_457"@21148
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
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
pushi.e 1
pop.v.i self.bonetalk

:[2]
push.v self.bonetalk
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.s "obj_papyrusboss_466"@21150
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 22
pop.v.i global.typer
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
pop.v.i self.bonetalk
pushi.e 98
pop.v.i 641.sprite_index
pushi.e 0
pop.v.i 641.image_index
pushi.e 0
pop.v.i 641.image_speed

:[7]
push.v self.bonetalk
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.s "obj_papyrusboss_477"@21152
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrusboss_478"@21154
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 22
pop.v.i global.typer
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
pushi.e 3
pop.v.i self.bonetalk
pushi.e 1
pop.v.i 641.image_index

:[12]
push.v self.bonetalk
pushi.e 3
cmp.i.v EQ
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
bf [17]

:[16]
push.s "obj_papyrusboss_487"@21156
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrusboss_488"@21158
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 22
pop.v.i global.typer
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
pushi.e 4
pop.v.i self.bonetalk
push.d 0.2
pop.v.d 641.image_speed
pushi.e 100
pop.v.i 641.sprite_index
pushi.e 1
pop.v.i 641.hspeed

:[17]
push.v self.bonetalk
pushi.e 4
cmp.i.v EQ
bf [19]

:[18]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 5
pop.v.i global.border
push.s "obj_papyrusboss_502"@21160
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrusboss_503"@21162
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrusboss_504"@21164
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 22
pop.v.i global.typer
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
pushi.e 5
pop.v.i self.bonetalk

:[22]
pushi.e 2
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
push.v self.bonetalk
pushi.e 5
cmp.i.v EQ
bf [24]

:[23]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [end]

:[26]
push.s "obj_papyrusboss_514"@21166
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.blcon
conv.v.i
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]
pushi.e 641
pushenv [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
popenv [29]
pushi.e 0
pop.v.i self.dontcancel
pushi.e -2
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[end]
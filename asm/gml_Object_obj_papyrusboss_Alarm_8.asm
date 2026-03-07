.localvar 0 arguments

:[0]
push.v self.bonetalk3
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.batmusic
call.i caster_get_volume(argc=1)
pop.v.v self.vol
push.s "obj_papyrusboss_402"@21134
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrusboss_403"@21136
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrusboss_404"@21138
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrusboss_405"@21140
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrusboss_406"@21142
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
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
pop.v.i self.bonetalk3

:[2]
pushi.e 2
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm
push.v self.bonetalk3
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
bf [9]

:[6]
pushi.e 0
pop.v.i self.vol
push.v self.blcon
conv.v.i
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 0
pop.v.i self.dontcancel
pushi.e -2
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.bonetalk3
pushi.e 8000
pop.v.i self.mercymod
push.s "obj_papyrusboss_423"@21144
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
neg.v
pushi.e 2
mul.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monsterdef

:[9]
push.v self.vol
push.d 0.01
cmp.d.v GT
bf [11]

:[10]
push.v self.vol
push.d 0.01
sub.d.v
pop.v.v self.vol

:[11]
push.v self.vol
pushglb.v global.batmusic
call.i caster_set_volume(argc=2)
popz.v

:[end]
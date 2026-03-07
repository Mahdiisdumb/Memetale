.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [16]

:[5]
pushi.e 1175
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [15]

:[9]
push.v 1175.sugar
pushi.e 1
cmp.i.v EQ
bf [12]

:[10]
push.v 1175.eggs
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v 1175.milk
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 1
pop.v.i self.con

:[15]
pushi.e 0
pop.v.i self.myinteract

:[16]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 109
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v 1576.x
pushi.e 15
sub.i.v
pop.v.v self.newx
pushi.e 1365
conv.i.v
pushi.e 374
conv.i.v
push.v self.newx
pushi.e 7
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1796
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 3020
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1365
conv.i.v
pushi.e 370
conv.i.v
push.v self.newx
pushi.e 2
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1808
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 3010
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1365
conv.i.v
pushi.e 360
conv.i.v
push.v self.newx
pushi.e 1
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1795
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 3000
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.depth

:[18]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [20]

:[19]
push.d 0.25
pop.v.d 1175.image_speed
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
push.s "obj_countermiddle_116"@11335
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_countermiddle_117"@11337
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_countermiddle_118"@11339
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_countermiddle_119"@11341
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_countermiddle_120"@11343
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[20]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [22]

:[21]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [end]

:[24]
pushi.e 1197
pushenv [26]

:[25]
push.v self.bossa
call.i caster_stop(argc=1)
popz.v

:[26]
popenv [25]
pushi.e 20
pop.v.i 1197.con
pushi.e 5
pop.v.i self.con

:[end]
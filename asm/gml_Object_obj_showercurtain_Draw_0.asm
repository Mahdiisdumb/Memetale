.localvar 0 arguments

:[0]
push.v self.anim
push.v self.animspeed
add.v.v
pop.v.v self.anim
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [10]

:[1]
push.v self.y
push.v self.x
push.v self.anim
call.i floor(argc=1)
pushi.e 2223
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v 1576.y
push.v self.remy
pushi.e 2
sub.i.v
cmp.v.v LT
bf [5]

:[2]
push.v self.onoff
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.remy
pushi.e 1
sub.i.v
pop.v.v 1576.y
b [5]

:[4]
push.v self.remy
pop.v.v 1576.y

:[5]
push.v 1576.y
pop.v.v self.remy
push.v self.onoff
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.onoff
b [8]

:[7]
pushi.e 0
pop.v.i self.onoff

:[8]
push.v 1576.y
pushi.e 180
cmp.i.v LT
bf [10]

:[9]
push.d 0.08
push.d 0.8
pushi.e 180
push.v 1576.y
sub.v.i
pushi.e 180
conv.i.d
div.d.v
mul.v.d
add.v.d
pop.v.v self.animspeed
push.d 0.6
pushi.e 1
pushi.e 180
push.v 1576.y
sub.v.i
pushi.e 180
conv.i.d
div.d.v
mul.v.i
add.v.d
pop.v.v self.pit
push.v self.pit
push.v self.dist
call.i caster_set_pitch(argc=2)
popz.v

:[10]
push.v self.drawkey
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
conv.i.v
push.i 65280
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 34
add.i.v
push.v self.anim
pushi.e 2213
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[12]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.v self.mode
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.d 0.1
pop.v.d self.animspeed
pushi.e 1
pop.v.i self.mode
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.dist
call.i caster_free(argc=1)
popz.v
pushi.e 22
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pushi.e -5
pushi.e 483
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.drawkey

:[17]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.interact
pushi.e 3
pop.v.i self.con

:[19]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e -5
pushi.e 483
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i self.drawkey
push.s "obj_showercurtain_227"@25459
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_showercurtain_228"@25460
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
pushi.e -5
pushi.e 483
pop.v.i [array]global.flag

:[24]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [26]

:[25]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 10
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[29]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e -5
pushi.e 483
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 12
pop.v.i self.con
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
push.s "obj_showercurtain_248"@25462
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

:[34]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [36]

:[35]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
pushi.e 10
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[39]
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [43]

:[40]
push.v self.size
push.d 0.3
cmp.d.v GT
bf [42]

:[41]
push.v self.size
push.d 0.1
sub.d.v
pop.v.v self.size

:[42]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.size
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2224
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[43]
push.v self.mode
pushi.e 2
cmp.i.v EQ
bf [45]

:[44]
push.d 0.3
pop.v.d self.size
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.size
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2224
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[45]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2225
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]
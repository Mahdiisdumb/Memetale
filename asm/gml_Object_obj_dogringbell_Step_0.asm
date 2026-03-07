.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 42
cmp.i.v LT
bf [2]

:[1]
pushi.e 0
pop.v.i self.myinteract

:[2]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.conversation
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [11]

:[6]
pushi.e -5
pushi.e 52
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [10]

:[7]
pushi.e 28
conv.i.v
call.i snd_isplaying(argc=1)
conv.v.b
not.b
bf [9]

:[8]
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v

:[9]
pushi.e 0
pop.v.i self.conversation
pushi.e 0
pop.v.i self.myinteract
b [11]

:[10]
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i self.myinteract

:[11]
push.v self.conversation
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 12
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.visible
pushi.e 1384
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed
pushi.e 150
pop.v.i self.y
push.d -0.5
pop.v.d self.vspeed
pushi.e 2
pop.v.i self.conversation

:[16]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [18]

:[17]
push.v self.y
pushi.e 120
cmp.i.v LTE
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 120
pop.v.i self.y
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 3
pop.v.i self.conversation
pushi.e 0
pop.v.i self.vspeed

:[21]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
bf [33]

:[22]
push.s "obj_dogringbell_148"@11807
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.td
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_dogringbell_149"@11809
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[24]
push.v self.td
pushi.e 2
cmp.i.v EQ
bf [26]

:[25]
push.s "obj_dogringbell_150"@11811
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[26]
push.v self.td
pushi.e 3
cmp.i.v EQ
bf [28]

:[27]
push.s "obj_dogringbell_151"@11813
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[28]
push.v self.td
pushi.e 4
cmp.i.v EQ
bf [30]

:[29]
push.s "obj_dogringbell_152"@11815
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[30]
push.v self.td
pushi.e 4
cmp.i.v GT
bf [32]

:[31]
push.s "obj_dogringbell_153"@11816
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
call.i scr_regulartext(argc=0)
popz.v
pushi.e 7
pop.v.i self.conversation
push.v self.td
pushi.e 1
add.i.v
pop.v.v self.td

:[33]
push.v self.conversation
pushi.e 7
cmp.i.v EQ
bf [35]

:[34]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 1
pop.v.i self.vspeed
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 8
pop.v.i self.conversation

:[38]
push.v self.conversation
pushi.e 9
cmp.i.v EQ
bf [end]

:[39]
pushi.e 0
pop.v.i self.visible
pushi.e 1145
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.vspeed
pushi.e 140
pop.v.i self.y
pushi.e 0
pop.v.i self.conversation
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract

:[end]
.localvar 0 arguments

:[0]
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
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.myinteract

:[5]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.myinteract

:[7]
push.v self.myinteract
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1722
pop.v.i self.sprite_index

:[9]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i self.image_speed
pushi.e 1723
pop.v.i self.sprite_index
pushi.e 1
conv.i.v
push.d 0.75
conv.d.v
push.v self.tv
call.i caster_loop(argc=3)
popz.v
pushi.e 3
pop.v.i self.conversation
pushi.e 10
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[11]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
bf [18]

:[12]
pushi.e 1027
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[13]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_paptv_152"@20217
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_paptv_153"@20218
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_paptv_154"@20220
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_paptv_156"@20222
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_paptv_157"@20224
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
b [15]

:[14]
push.s "obj_paptv_159"@20226
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.read
pushi.e 1
cmp.i.v GT
bf [17]

:[16]
push.s "obj_paptv_160"@20227
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[17]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 5
pop.v.i self.conversation

:[18]
push.v self.conversation
pushi.e 5
cmp.i.v EQ
bf [20]

:[19]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [end]

:[22]
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read
pushi.e 0
pop.v.i self.conversation
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.interact
push.v self.buffer
pushi.e 0
cmp.i.v LTE
bf [24]

:[23]
pushi.e 93
conv.i.v
call.i snd_play(argc=1)
popz.v

:[24]
pushi.e 5
pop.v.i self.buffer
pushi.e 1722
pop.v.i self.sprite_index
push.v self.tv
call.i caster_stop(argc=1)
popz.v
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v

:[end]
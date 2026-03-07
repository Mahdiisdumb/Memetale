.localvar 0 arguments

:[0]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 1576.x
pushi.e 440
cmp.i.v LT
bt [3]

:[2]
push.v 1576.x
pushi.e 460
cmp.i.v GT
b [4]

:[3]
push.e 1

:[4]
bf [7]

:[5]
push.v 1576.y
pushi.e 526
cmp.i.v GT
bf [7]

:[6]
pushi.e 526
pop.v.i 1576.y

:[7]
push.v 1576.x
pushi.e 170
cmp.i.v GT
bf [12]

:[8]
push.v 1576.y
pushi.e 130
cmp.i.v GT
bf [12]

:[9]
push.v 1576.x
pushbltn.v self.room_width
pushi.e 170
sub.i.v
cmp.v.v LT
bf [12]

:[10]
push.v 1576.y
pushbltn.v self.room_height
pushi.e 160
sub.i.v
cmp.v.v LT
bf [12]

:[11]
push.v self.lock
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.s "music/creepy_ambience.ogg"@2773
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.tone
push.d 1.1
conv.d.v
pushi.e 0
conv.i.v
pushi.e 389
conv.i.v
call.i caster_loop(argc=3)
pop.v.v self.tone1
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 389
conv.i.v
call.i caster_loop(argc=3)
pop.v.v self.tone2
push.d 0.9
conv.d.v
pushi.e 0
conv.i.v
pushi.e 389
conv.i.v
call.i caster_loop(argc=3)
pop.v.v self.tone3
pushi.e 0
pop.v.i self.tonevol
pushi.e 1
pop.v.i self.lock
b [21]

:[15]
push.v 1576.x
pushi.e 180
cmp.i.v LT
bf [17]

:[16]
pushi.e 180
pop.v.i 1576.x

:[17]
push.v 1576.x
pushbltn.v self.room_width
pushi.e 180
sub.i.v
cmp.v.v GT
bf [19]

:[18]
pushbltn.v self.room_width
pushi.e 180
sub.i.v
pop.v.v 1576.x

:[19]
push.v 1576.y
pushi.e 170
cmp.i.v LT
bf [21]

:[20]
pushi.e 170
pop.v.i 1576.y

:[21]
push.v self.lock
pushi.e 1
cmp.i.v EQ
bf [end]

:[22]
push.v self.locktime
pushi.e 250
cmp.i.v GTE
bf [24]

:[23]
push.v self.locktime
pushi.e 250
sub.i.v
pushi.e 250
conv.i.d
div.d.v
pop.v.v self.tonevol
push.v self.tonevol
pushi.e 389
conv.i.v
call.i caster_set_volume(argc=2)
popz.v

:[24]
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pop.v.v 1576.x
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pop.v.v 1576.y
push.v 1576.moving
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
push.v self.locktime
pushi.e 1
add.i.v
pop.v.v self.locktime

:[26]
push.v self.locktime
pushi.e 550
cmp.i.v GTE
bf [end]

:[27]
push.v self.tone
call.i caster_free(argc=1)
popz.v
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i 1576.visible
pushi.e 1
pop.v.i global.interact
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.lock

:[end]
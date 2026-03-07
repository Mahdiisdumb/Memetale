.localvar 0 arguments

:[0]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i global.interact
pushi.e 6
pop.v.i self.con
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[5]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i global.interact

:[7]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [10]

:[8]
pushi.e 3
pop.v.i 1576.hspeed
push.d 0.25
pop.v.d 1576.image_speed
pushi.e 1
pop.v.i global.facing
push.v 1576.x
push.v self.x
pushi.e 22
add.i.v
cmp.v.v GT
bf [10]

:[9]
push.d 6.1
pop.v.d self.con

:[10]
push.v self.con
push.d 6.1
cmp.d.v EQ
bf [12]

:[11]
pushi.e 3
pop.v.i global.facing
pushi.e 0
pop.v.i 1576.hspeed
pushi.e 0
pop.v.i 1576.image_speed
push.d 7.2
pop.v.d self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.con
push.d 8.2
cmp.d.v EQ
bf [14]

:[13]
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 3
pop.v.i global.facing
pushi.e 0
pop.v.i 1576.hspeed
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1578
pop.v.i 1058.sprite_index
pushi.e 0
pop.v.i 1058.image_index
pushi.e 1
pop.v.i 1058.drawerdown
pushi.e 9
pop.v.i self.con
pushi.e 35
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[14]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [16]

:[15]
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i 1058.image_index
pushi.e 11
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[16]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [18]

:[17]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 3
pop.v.i 1058.drawerdown
pushi.e 13
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[18]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [end]

:[19]
pushi.e 1576
pushenv [21]

:[20]
pushi.e 0
pop.v.i self.uncan

:[21]
popenv [20]
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.facing
pushi.e 15
pop.v.i self.con

:[end]
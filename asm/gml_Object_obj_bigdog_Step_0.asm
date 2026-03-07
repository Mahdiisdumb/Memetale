.localvar 0 arguments

:[0]
push.v self.myinteract
push.i 453748
cmp.i.v EQ
bf [7]

:[1]
pushi.e 113
conv.i.v
call.i snd_isplaying(argc=1)
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 113
conv.i.v
call.i snd_play(argc=1)
popz.v

:[3]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.image_index
pushi.e 1
pop.v.i self.glow
b [6]

:[5]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.glow

:[6]
pushi.e 0
pop.v.i self.myinteract

:[7]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i global.interact
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 1
pop.v.i self.image_index
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.myinteract

:[9]
push.v self.bluh
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 23
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i self.image_index
pushi.e 2
pop.v.i self.bluh
pushi.e 35
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[11]
push.v self.bluh
pushi.e 3
cmp.i.v EQ
bf [end]

:[12]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.image_index
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushi.e 0
pop.v.i self.bluh

:[end]
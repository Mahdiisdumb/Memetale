.localvar 0 arguments

:[0]
push.v self.flasher
pushi.e 1
add.i.v
pop.v.v self.flasher
push.v self.drawblack
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.drawblack
b [3]

:[2]
pushi.e 1
pop.v.i self.drawblack

:[3]
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.flasher
pushi.e 5
cmp.i.v GT
bf [5]

:[4]
push.v self.drawblack
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [end]

:[7]
pushi.e -1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]
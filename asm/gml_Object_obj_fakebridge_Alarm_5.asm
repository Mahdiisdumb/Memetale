.localvar 0 arguments

:[0]
push.v self.drawamt
push.v self.sprite_width
cmp.v.v LT
bf [2]

:[1]
push.v self.drawamt
pushi.e 8
add.i.v
pop.v.v self.drawamt
pushi.e 93
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 15
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[2]
push.v self.drawamt
push.v self.sprite_width
cmp.v.v GTE
bf [end]

:[3]
push.v self.sprite_width
pop.v.v self.drawamt
pushi.e -1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 6
pop.v.i self.justdoit

:[end]
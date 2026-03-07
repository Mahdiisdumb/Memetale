.localvar 0 arguments

:[0]
push.v self.reds
pushi.e 1
add.i.v
pop.v.v self.reds
push.v self.sprite_index
pushi.e 135
cmp.i.v EQ
bf [2]

:[1]
pushi.e 130
pop.v.i self.sprite_index
b [3]

:[2]
pushi.e 135
pop.v.i self.sprite_index

:[3]
pushi.e 5
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
push.v self.reds
pushi.e 4
cmp.i.v GT
bf [end]

:[4]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e -1
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 90
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.speed
push.d -0.2
pop.v.d self.friction

:[end]
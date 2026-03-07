.localvar 0 arguments

:[0]
push.v self.barked
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
pushi.e 121
pop.v.i self.sprite_index
pushi.e 4
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 8
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 41
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.barked
pushi.e 1
add.i.v
pop.v.v self.barked
b [end]

:[2]
pushi.e 10
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 117
pop.v.i self.sprite_index

:[end]
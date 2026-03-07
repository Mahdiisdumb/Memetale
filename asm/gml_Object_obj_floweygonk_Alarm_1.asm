.localvar 0 arguments

:[0]
pushi.e 20
pop.v.i self.gl
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.image_index
pushi.e 7
cmp.i.v LT
bf [2]

:[1]
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index
b [end]

:[2]
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e -1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e -1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.visible
pushi.e 150
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]
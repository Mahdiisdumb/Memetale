.localvar 0 arguments

:[0]
push.v self.image_index
pushi.e 47
cmp.i.v EQ
bt [2]

:[1]
push.v self.image_index
pushi.e 51
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
pushi.e 41
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]
.localvar 0 arguments

:[0]
push.v self.string0
call.i string_length(argc=1)
pop.v.v self.stringln
push.s ""@36
pop.v.s self.string1
push.v self.at
push.v self.string0
call.i string_char_at(argc=2)
pop.v.v self.tchar
push.v self.string1
push.v self.tchar
add.v.v
pop.v.v self.string1
push.v self.at
pushi.e 1
add.i.v
pop.v.v self.at
push.v self.typespeed
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i self.active
push.v self.tchar
push.s " "@18
cmp.s.v NEQ
bf [end]

:[1]
pushi.e 85
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 85
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]
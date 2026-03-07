.localvar 0 arguments

:[0]
push.v self.stringln
push.v self.at
pushi.e 1
sub.i.v
cmp.v.v GT
bf [end]

:[1]
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
push.v self.tchar
push.s " "@18
cmp.s.v NEQ
bf [end]

:[2]
push.v self.w_sfx
call.i caster_stop(argc=1)
popz.v
push.d 1.15
conv.d.v
push.d 0.9
conv.d.v
push.v self.w_sfx
call.i caster_play(argc=3)
popz.v

:[end]
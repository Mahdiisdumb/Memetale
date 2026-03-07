.localvar 0 arguments

:[0]
push.v self.scoord
pushi.e 1
add.i.v
pop.v.v self.scoord
push.v self.scoord
push.v self.stringlength
cmp.v.v LTE
bf [2]

:[1]
push.v self.newstring
push.v self.scoord
push.v self.sting
call.i string_char_at(argc=2)
add.v.v
pop.v.v self.newstring
b [4]

:[2]
push.v self.can_off
conv.v.b
bf [4]

:[3]
pushi.e 1
pop.v.i self.off

:[4]
pushi.e 3
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
push.v self.gggg
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[6]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [end]

:[7]
pushi.e -1
pushi.e 2
dup.i 1
push.v [array]self.alarm
pushi.e 2
mul.i.v
pop.i.v [array]self.alarm

:[end]
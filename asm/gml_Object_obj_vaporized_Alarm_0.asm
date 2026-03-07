.localvar 0 arguments

:[0]
push.v self.finishedreading
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.wd
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [6]

:[3]
push.v self.myread
push.v self.mydata
call.i string_char_at(argc=2)
pop.v.v self.mychar
push.v self.mychar
push.s "1"@6320
cmp.s.v EQ
bf [5]

:[4]
pushi.e 194
conv.i.v
push.v self.y
push.v self.line
pushi.e 4
mul.i.v
add.v.v
push.v self.x
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushi.e 2
sub.i.v
call.i instance_create(argc=3)
popz.v

:[5]
push.v self.myread
pushi.e 1
add.i.v
pop.v.v self.myread
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[6]
push.v self.myvapor
pushi.e 0
cmp.i.v EQ
bf [12]

:[7]
push.v self.line
pushi.e 1
add.i.v
pop.v.v self.line
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
push.v self.wd
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [12]

:[9]
push.v self.myread
push.v self.mydata
call.i string_char_at(argc=2)
pop.v.v self.mychar
push.v self.mychar
push.s "1"@6320
cmp.s.v EQ
bf [11]

:[10]
pushi.e 194
conv.i.v
push.v self.y
push.v self.line
pushi.e 4
mul.i.v
add.v.v
push.v self.x
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushi.e 2
sub.i.v
call.i instance_create(argc=3)
popz.v

:[11]
push.v self.myread
pushi.e 1
add.i.v
pop.v.v self.myread
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [8]

:[12]
push.v self.line
pushi.e 1
add.i.v
pop.v.v self.line
push.v self.line
push.v self.ht
pushi.e 2
conv.i.d
div.d.v
pushi.e 4
sub.i.v
cmp.v.v GT
bf [14]

:[13]
pushi.e 1
pop.v.i self.finishedreading
b [end]

:[14]
pushi.e 1
push.v self.myvapor
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.myvapor
pushi.e 1
cmp.i.v GT
bf [end]

:[15]
pushi.e 93
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]
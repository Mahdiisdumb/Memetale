.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.wd
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [5]

:[2]
push.v self.file
call.i ossafe_file_text_read_string(argc=1)
push.s "1"@6320
cmp.s.v EQ
bf [4]

:[3]
pushi.e 195
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

:[4]
push.v self.file
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[5]
push.v self.myvapor
pushi.e 0
cmp.i.v EQ
bf [11]

:[6]
push.v self.line
pushi.e 1
add.i.v
pop.v.v self.line
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
push.v self.wd
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [11]

:[8]
push.v self.file
call.i ossafe_file_text_read_string(argc=1)
push.s "1"@6320
cmp.s.v EQ
bf [10]

:[9]
pushi.e 195
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
call.i instance_create(argc=3)
popz.v

:[10]
push.v self.file
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [7]

:[11]
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
bf [13]

:[12]
push.v self.file
call.i ossafe_file_text_close(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v
exit.i

:[13]
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

:[14]
pushi.e 93
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]
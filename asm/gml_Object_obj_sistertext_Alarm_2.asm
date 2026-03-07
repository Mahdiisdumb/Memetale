.localvar 0 arguments

:[0]
push.v self.num
pushi.e 1
add.i.v
pop.v.v self.num
push.v self.phraselength
push.v self.num
cmp.v.v GT
bf [2]

:[1]
push.v self.this_phrase
push.v self.num
push.v self.phrase
call.i string_char_at(argc=2)
add.v.v
pop.v.v self.this_phrase
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
b [end]

:[2]
pushi.e 1
pop.v.i self.done

:[end]
.localvar 0 arguments

:[0]
push.v self.phrase
call.i string_length(argc=1)
pop.v.v self.phraselength
pushi.e 1
pop.v.i self.active
pushi.e 1
pop.v.i self.num
push.s ""@36
pop.v.s self.this_phrase
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
pushi.e 10
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]
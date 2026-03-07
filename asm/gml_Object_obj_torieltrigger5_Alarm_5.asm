.localvar 0 arguments

:[0]
push.v self.toriel
conv.v.i
pushenv [2]

:[1]
pushi.e 1191
pop.v.i self.sprite_index

:[2]
popenv [1]
pushi.e 0
push.v self.toriel
conv.v.i
pop.v.i [stacktop]self.phone
push.v self.toriel
conv.v.i
pushenv [4]

:[3]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 18
conv.i.v
call.i path_start(argc=4)
popz.v

:[4]
popenv [3]
pushi.e 4
pop.v.i self.conversation

:[end]
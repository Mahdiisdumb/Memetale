.localvar 0 arguments
.localvar 1 str 989
.localvar 2 pos 990
.localvar 3 len 991

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.argument
pop.v.v local.str
pushi.e -1
pushi.e 1
push.v [array]self.argument
pop.v.v local.pos
pushloc.v local.pos
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
pushloc.v local.str
call.i strlen(argc=1)
pushi.e 1
add.i.v
pushloc.v local.pos
add.v.v
pop.v.v local.pos

:[2]
pushbltn.v self.argument_count
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushloc.v local.str
call.i strlen(argc=1)
pushloc.v local.pos
sub.v.v
pushi.e 1
add.i.v
pop.v.v local.len
b [5]

:[4]
pushi.e -1
pushi.e 2
push.v [array]self.argument
pop.v.v local.len

:[5]
pushloc.v local.len
pushi.e 0
cmp.i.v GT
bf [8]

:[6]
pushloc.v local.len
pushloc.v local.pos
pushloc.v local.str
call.i string_copy(argc=3)
ret.v

:[7]
b [end]

:[8]
push.s ""@36
conv.s.v
ret.v

:[end]
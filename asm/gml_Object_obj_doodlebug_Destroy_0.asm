.localvar 0 arguments

:[0]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monster
push.v self.object_index
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 459
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.p_mode

:[3]
popenv [2]

:[end]
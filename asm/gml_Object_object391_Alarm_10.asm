.localvar 0 arguments

:[0]
push.v self.mypart1
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
push.v self.mypart2
conv.v.i
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 2
pop.v.i self.image_index
pushi.e 30
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[end]
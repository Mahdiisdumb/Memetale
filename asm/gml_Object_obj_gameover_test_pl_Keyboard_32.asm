.localvar 0 arguments

:[0]
push.v self.spaces
pushi.e 1
add.i.v
pop.v.v self.spaces
push.v self.spaces
pushi.e 50
cmp.i.v GTE
bf [end]

:[1]
pushi.e 0
pop.v.i self.i
pushi.e 99
dup.i 0
push.i 0
cmp.i.i LTE
bt [3]

:[2]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.failure
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [2]

:[3]
popz.i
pushi.e 30
pop.v.i global.attacktype
pushi.e 20
pop.v.i global.testhp
pushi.e 0
pop.v.i global.testinv
pushi.e 6
pop.v.i global.healno
pushbltn.v self.room_first
call.i room_goto(argc=1)
popz.v

:[end]
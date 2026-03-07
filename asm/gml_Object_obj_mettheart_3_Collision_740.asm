.localvar 0 arguments

:[0]
pushi.e 127
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v other.id
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
push.v self.life
pushi.e 40
sub.i.v
pop.v.v self.life
push.v self.life
pushi.e 1
cmp.i.v LT
bf [4]

:[3]
push.v self.movetype
pushi.e 1
cmp.i.v NEQ
b [5]

:[4]
push.e 0

:[5]
bf [19]

:[6]
pushi.e 443
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 434
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
pushi.e 1365
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]
pushi.e 432
pushenv [14]

:[13]
pushi.e 5
pop.v.i self.flash
pushi.e 2
pop.v.i self.type

:[14]
popenv [13]
pushi.e 435
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.q
push.v self.num
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [18]

:[17]
pushi.e 0
pushi.e -1
push.v self.q
conv.v.i
push.v [array]self.kid
conv.v.i
pop.v.i [stacktop]self.visible
push.v self.q
pushi.e 1
add.i.v
pop.v.v self.q
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [17]

:[18]
popz.i

:[19]
push.v global.ratings
pushi.e 20
add.i.v
pop.v.v global.ratings

:[end]
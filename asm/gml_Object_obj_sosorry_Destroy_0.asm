.localvar 0 arguments

:[0]
push.v self.killed
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pushi.e -5
pushi.e 281
pop.v.i [array]global.flag
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e 100
add.i.v
pop.i.v [array]global.goldreward
push.v self.x
pushi.e 19
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 24
sub.i.v
pop.v.v self.y
b [3]

:[2]
pushi.e 1
pushi.e -5
pushi.e 281
pop.v.i [array]global.flag

:[3]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_monsterdefeat(argc=5)
popz.v
push.v self.mypart1
conv.v.i
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]

:[end]
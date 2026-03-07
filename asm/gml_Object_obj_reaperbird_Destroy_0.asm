.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -5
pushi.e 10
pop.v.i [array]global.flag
pushi.e -5
pushi.e 23
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monster
push.v self.mypart1
conv.v.i
pushenv [2]

:[1]
pushi.e 2
pop.v.i self.stretchup

:[2]
popenv [1]

:[end]
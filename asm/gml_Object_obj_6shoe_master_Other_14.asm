.localvar 0 arguments

:[0]
push.v self.type
pushi.e 2
cmp.i.v EQ
bt [2]

:[1]
push.v self.type
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
pushi.e 1
pop.v.i self.type
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 30
cmp.i.v LT
bf [end]

:[6]
pushi.e 1617
conv.i.v
push.v self.stary
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
push.v self.starx
push.v self.i
pushi.e 40
mul.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[end]
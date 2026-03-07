.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [10]

:[2]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e 10
cmp.i.v LT
bf [4]

:[3]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.u

:[4]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e 250
cmp.i.v GT
bf [6]

:[5]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.u

:[6]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.u
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.c
pushi.e 2
add.i.v
pop.i.v [array]self.c
b [9]

:[8]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.c
pushi.e 3
sub.i.v
pop.i.v [array]self.c

:[9]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[10]
pushi.e -1
pushi.e 2
push.v [array]self.c
pushi.e -1
pushi.e 1
push.v [array]self.c
pushi.e -1
pushi.e 0
push.v [array]self.c
call.i make_color_rgb(argc=3)
pop.v.v self.color

:[end]
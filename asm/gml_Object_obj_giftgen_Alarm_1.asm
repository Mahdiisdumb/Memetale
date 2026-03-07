.localvar 0 arguments

:[0]
pushi.e 0
pushi.e -1
push.v self.bltx
conv.v.i
push.v [array]self.blt
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
pushi.e -1
push.v self.bltx
conv.v.i
push.v [array]self.blt
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 1
pop.v.i self.siner
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 41
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[2]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 61
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[4]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [end]

:[5]
pushi.e 21
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]
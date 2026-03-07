.localvar 0 arguments

:[0]
push.v self.shake
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.nowx
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.nowy
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
pop.v.v self.y

:[2]
push.v self.walking
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.nowx
pushi.e 1
sub.i.v
pop.v.v self.nowx

:[4]
push.v self.factor
push.d 0.04
add.d.v
pop.v.v self.factor

:[end]
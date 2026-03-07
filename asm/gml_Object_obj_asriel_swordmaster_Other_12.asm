.localvar 0 arguments

:[0]
push.v self.x
push.v self.thisx
pushi.e 80
sub.i.v
cmp.v.v GT
bf [3]

:[1]
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x
push.v self.x
push.v self.thisx
pushi.e 35
sub.i.v
cmp.v.v GT
bf [3]

:[2]
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.torsorot
pushi.e 1
add.i.v
pop.i.v [stacktop]self.torsorot

:[3]
push.v self.x
push.v self.thisx
pushi.e 70
sub.i.v
cmp.v.v GT
bf [6]

:[4]
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x
push.v self.x
push.v self.thisx
pushi.e 35
sub.i.v
cmp.v.v GT
bf [6]

:[5]
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.torsorot
pushi.e 2
add.i.v
pop.i.v [stacktop]self.torsorot

:[6]
push.v self.x
push.v self.thisx
pushi.e 60
sub.i.v
cmp.v.v GT
bf [9]

:[7]
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x
push.v self.x
push.v self.thisx
pushi.e 35
sub.i.v
cmp.v.v GT
bf [9]

:[8]
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.torsorot
pushi.e 3
add.i.v
pop.i.v [stacktop]self.torsorot

:[9]
push.v self.x
push.v self.thisx
pushi.e 40
sub.i.v
cmp.v.v GT
bf [12]

:[10]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x
push.v self.x
push.v self.thisx
pushi.e 35
sub.i.v
cmp.v.v GT
bf [12]

:[11]
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.torsorot
pushi.e 4
add.i.v
pop.i.v [stacktop]self.torsorot

:[12]
push.v self.x
push.v self.thisx
pushi.e 20
sub.i.v
cmp.v.v GT
bf [14]

:[13]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x

:[14]
push.v self.x
push.v self.thisx
cmp.v.v GT
bf [16]

:[15]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x

:[16]
push.v self.x
push.v self.thisx
pushi.e 10
add.i.v
cmp.v.v GT
bf [end]

:[17]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x

:[end]
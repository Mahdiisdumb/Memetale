.localvar 0 arguments

:[0]
push.v self.x
push.v self.thisx
pushi.e 35
sub.i.v
cmp.v.v LT
bf [2]

:[1]
push.v self.thisx
pushi.e 35
sub.i.v
pop.v.v self.x

:[2]
push.v self.x
push.v self.thisx
pushi.e 25
add.i.v
cmp.v.v GT
bf [4]

:[3]
push.v self.thisx
pushi.e 25
add.i.v
pop.v.v self.x

:[4]
push.v self.x
pop.v.v 570.x
push.v self.y
pop.v.v 570.y
push.v self.king
conv.v.i
pushenv [7]

:[5]
push.v self.torsorot
push.d 0.7
mul.d.v
pop.v.v self.torsorot
push.v self.torsorot
call.i abs(argc=1)
pushi.e 1
cmp.i.v LTE
bf [7]

:[6]
pushi.e 0
pop.v.i self.torsorot

:[7]
popenv [5]
push.v self.freakcon
pushi.e 0
cmp.i.v GT
bf [end]

:[8]
push.v self.freakcon
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.ftimer
pushi.e 20
pop.v.i self.hy
pushi.e 90
pop.v.i self.fhy
pushi.e 2
pop.v.i self.freakcon
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[10]
push.v self.freakcon
pushi.e 2
cmp.i.v EQ
bf [13]

:[11]
push.v self.fhy
push.d 0.8
mul.d.v
pop.v.v self.fhy
push.v self.fhy
pushi.e 5
conv.i.d
div.d.v
pushi.e 18
sub.i.v
push.v self.king
conv.v.i
pop.v.v [stacktop]self.heady
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.headrot
push.v self.fhy
sub.v.v
pop.i.v [stacktop]self.headrot
push.v self.ftimer
pushi.e 1
add.i.v
pop.v.v self.ftimer
push.v self.ftimer
pushi.e 34
cmp.i.v GT
bf [13]

:[12]
pushi.e 3
pop.v.i self.freakcon

:[13]
push.v self.freakcon
pushi.e 3
cmp.i.v EQ
bf [end]

:[14]
pushi.e 20
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.y
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.heady
pushi.e 8
add.i.v
pop.i.v [stacktop]self.heady
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.1
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.king
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [end]

:[15]
pushi.e 4
pop.v.i self.freakcon

:[end]
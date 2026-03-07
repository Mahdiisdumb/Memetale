.localvar 0 arguments

:[0]
pushi.e 295
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i 295.atk

:[2]
pushi.e 0
pop.v.i self.i
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [4]

:[3]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.temdir
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.temtim
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.temx1
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.temx2
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.Mahdii2
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.temy2
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [3]

:[4]
popz.i
pushi.e 4
pop.v.i self.speed
push.v self.x
pushi.e -1
pushi.e 0
pop.v.v [array]self.temx1
push.v self.x
pushi.e 9
add.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.temx2
push.v self.y
pushi.e -1
pushi.e 0
pop.v.v [array]self.Mahdii2
push.v self.y
pushi.e 9
add.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.madhi
pushi.e 270
pushi.e -1
pushi.e 0
pop.v.i [array]self.temdir
pushi.e -1
pushi.e 0
push.v [array]self.temdir
pop.v.v self.direction
pushi.e 20
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 90
pushi.e -1
pushi.e 0
pop.v.i [array]self.temtim
pushi.e 0
pop.v.i self.temno
pushi.e 0
pop.v.i self.turned

:[end]
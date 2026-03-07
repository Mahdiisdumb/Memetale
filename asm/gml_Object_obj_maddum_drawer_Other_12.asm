.localvar 0 arguments

:[0]
pushi.e 5
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.faceemotion
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [3]

:[2]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.partx
pushi.e -20
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.i
add.v.v
pop.i.v [array]self.partx
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.party
pushi.e -10
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
add.v.v
pop.i.v [array]self.party
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.partrot
pushi.e -90
pushi.e 180
conv.i.v
call.i random(argc=1)
add.v.i
add.v.v
pop.i.v [array]self.partrot
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 5
pop.v.i self.mode
pushi.e 0
pop.v.i self.dingus

:[end]
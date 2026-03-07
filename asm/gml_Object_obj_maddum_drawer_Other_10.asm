.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.mode
pushi.e 5
pushi.e -1
pushi.e 0
pop.v.i [array]self.partx
pushi.e 75
pushi.e -1
pushi.e 0
pop.v.i [array]self.party
push.v self.rot
neg.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.partrot
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.partx
pushi.e 35
push.v self.rot
pushi.e 4
conv.i.d
div.d.v
add.v.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.party
push.v self.rot
pushi.e 2
conv.i.d
div.d.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.partrot
pushi.e 5
pushi.e -1
pushi.e 2
pop.v.i [array]self.partx
pushi.e 65
pushi.e -1
pushi.e 2
pop.v.i [array]self.party
push.v self.rot
pushi.e 3
conv.i.d
div.d.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.partrot
push.v self.rot
neg.v
pushi.e 3
conv.i.d
div.d.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.partx
push.v self.rot
pushi.e 3
conv.i.d
div.d.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.party
push.v self.rot
pushi.e -1
pushi.e 3
pop.v.v [array]self.partrot
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
push.v [array]self.partx
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.opartx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.party
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.oparty
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.partrot
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.opartrot
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.d 0.5
pop.v.d self.fakegrav

:[end]
.localvar 0 arguments

:[0]
pushi.e 4000
pop.v.i global.ratings
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [3]

:[2]
push.s ""@36
pushi.e -1
push.v self.i
conv.v.i
pop.v.s [array]self.rq
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.rq_v
pushi.e 900
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.rq_s
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.curtype
pushi.e 8
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.thisi
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [8]

:[5]
pushi.e 4000
pushi.e 500
conv.i.v
call.i random(argc=1)
sub.v.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.rp
push.v self.i
push.v self.thisi
cmp.v.v EQ
bf [7]

:[6]
pushglb.v global.ratings
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.rp

:[7]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[8]
pushi.e 6
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.accu
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
pushi.e 15
cmp.i.v LT
bf [11]

:[10]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.typeuse
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [9]

:[11]
pushi.e 0
pop.v.i self.boastmode
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.heel
pushglb.v global.hp
pop.v.v self.checkhp
pushglb.v global.armor
pop.v.v self.thisarmor
pushi.e 0
pop.v.i self.i

:[12]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [14]

:[13]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.armor_worn
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [12]

:[14]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.novel_armor
pushi.e 0
pop.v.i self.timeloss
pushi.e 0
pop.v.i self.o_o
pushi.e 0
pop.v.i self.o_ob
pushi.e 0
pop.v.i self.essay
pushi.e 1
pop.v.i self.active

:[end]
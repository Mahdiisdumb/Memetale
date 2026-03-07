.localvar 0 arguments

:[0]
push.v self.parent
conv.v.i
dup.i 0
push.v [stacktop]self.graze
pushi.e 1
add.i.v
pop.i.v [stacktop]self.graze
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.pop
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
push.v self.parent
conv.v.i
dup.i 0
push.v [stacktop]self.graze
push.d 0.5
add.d.v
pop.i.v [stacktop]self.graze

:[2]
push.v self.parent
conv.v.i
push.v [stacktop]self.graze
pushi.e 4
cmp.i.v LT
bf [4]

:[3]
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v

:[4]
push.v self.parent
conv.v.i
push.v [stacktop]self.graze
pushi.e 3
cmp.i.v GT
bf [6]

:[5]
pushi.e 30
push.v self.parent
conv.v.i
pop.v.i [stacktop]self.mercymod

:[6]
push.v self.parent
conv.v.i
push.v [stacktop]self.graze
pushi.e 4
cmp.i.v GTE
bf [8]

:[7]
pushi.e 100
push.v self.parent
conv.v.i
pop.v.i [stacktop]self.mercymod
pushi.e -99
pushi.e -5
push.v self.parent
conv.v.i
push.v [stacktop]self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 26
conv.i.v
call.i snd_play(argc=1)
popz.v

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]
.localvar 0 arguments

:[0]
push.v self.mercymod
pushi.e 10
cmp.i.v GT
bf [2]

:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
cmp.v.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e 30
add.i.v
pop.i.v [array]global.goldreward

:[5]
push.v self.killed
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pushi.e -5
pushi.e 27
pop.v.i [array]global.flag

:[7]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_monsterdefeat(argc=5)
popz.v
push.v self.mypart1
conv.v.i
pushenv [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
popenv [8]
push.v self.killed
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.d 0.5
push.v self.agent
conv.v.i
pop.v.d [stacktop]self.image_alpha
b [12]

:[11]
pushi.e 1
push.v self.agent
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 1
pushi.e -5
pushi.e 81
pop.v.i [array]global.flag

:[12]
pushi.e 0
pop.v.i self.i
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [14]

:[13]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.note
call.i caster_free(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [13]

:[14]
popz.i
pushi.e -1
pushi.e 0
push.v [array]self.longnote
call.i caster_free(argc=1)
popz.v
pushi.e -1
pushi.e 1
push.v [array]self.longnote
call.i caster_free(argc=1)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.badnote
call.i caster_free(argc=1)
popz.v
pushi.e -1
pushi.e 1
push.v [array]self.badnote
call.i caster_free(argc=1)
popz.v
pushi.e -1
pushi.e 2
push.v [array]self.badnote
call.i caster_free(argc=1)
popz.v

:[end]
.localvar 0 arguments

:[0]
push.v self.image_index
pushi.e 5
cmp.i.v GTE
bf [2]

:[1]
push.v self.image_index
pushi.e 6
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [39]

:[4]
push.v self.cutsdone
pushi.e 0
cmp.i.v EQ
bf [8]

:[5]
push.v self.cutsfxN
pushi.e 1
add.i.v
pop.v.v self.cutsfxN
push.v self.cutsfx
pushi.e -1
push.v self.cutsfxN
conv.v.i
pop.v.v [array]self.cutsfxA
push.v self.cutsfx
pushi.e -1
push.v self.cutsfxN
pushi.e 1
sub.i.v
conv.v.i
pop.v.v [array]self.cutsfxA
push.v self.cutsfxN
pushi.e 1
cmp.i.v GT
bf [7]

:[6]
pushi.e -1
push.v self.cutsfxN
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.cutsfxA
call.i caster_stop(argc=1)
popz.v

:[7]
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
pushi.e -1
push.v self.cutsfxN
conv.v.i
push.v [array]self.cutsfxA
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i self.cutsdone

:[8]
pushi.e -1
push.v self.curamt
conv.v.i
push.v [array]self.type
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [23]

:[12]
pushi.e 1
pop.v.i self.hit
push.v 744.x
push.v 744.xprevious
sub.v.v
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
bf [14]

:[13]
pushi.e 0
pop.v.i self.hit

:[14]
push.v 1575.left
conv.v.b
not.b
bf [18]

:[15]
push.v 1575.right
conv.v.b
not.b
bf [18]

:[16]
push.v 1575.up
conv.v.b
not.b
bf [18]

:[17]
push.v 1575.down
conv.v.b
not.b
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 0
pop.v.i self.hit

:[21]
push.v self.hit
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.hitted

:[23]
pushi.e -1
push.v self.curamt
conv.v.i
push.v [array]self.type
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [38]

:[27]
pushi.e 1
pop.v.i self.hit
push.v 744.x
push.v 744.xprevious
sub.v.v
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [29]

:[28]
pushi.e 0
pop.v.i self.hit

:[29]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [33]

:[30]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [33]

:[31]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [33]

:[32]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [34]

:[33]
push.e 1

:[34]
bf [36]

:[35]
pushi.e 0
pop.v.i self.hit

:[36]
push.v self.hit
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.hitted

:[38]
pushi.e 2
pop.v.i self.hitted
b [end]

:[39]
pushi.e 0
pop.v.i self.cutsdone

:[end]
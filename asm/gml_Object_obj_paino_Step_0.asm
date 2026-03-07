.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.num
push.v 1575.left
conv.v.b
bf [2]

:[1]
push.v self.num
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.num
pushi.e 1
add.i.v
pop.v.v self.num

:[5]
push.v 1575.down
conv.v.b
bf [7]

:[6]
push.v self.num
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.num
pushi.e 2
add.i.v
pop.v.v self.num

:[10]
push.v 1575.right
conv.v.b
bf [12]

:[11]
push.v self.num
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.v self.num
pushi.e 3
add.i.v
pop.v.v self.num

:[15]
push.v 1575.up
conv.v.b
bf [17]

:[16]
push.v self.num
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.v self.num
pushi.e 4
add.i.v
pop.v.v self.num

:[20]
push.v self.buffer
pushi.e 1
cmp.i.v LT
bf [26]

:[21]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [26]

:[22]
pushi.e 6
pushi.e -1
push.v self.num
conv.v.i
pop.v.i [array]self.justplayed
pushi.e 20
pushi.e -1
push.v self.num
conv.v.i
pop.v.i [array]self.played
push.d 1.13
conv.d.v
push.d 0.5
conv.d.v
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.p
call.i caster_play(argc=3)
popz.v
pushi.e 29
pop.v.i self.i

:[23]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [25]

:[24]
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.pp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pp
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [23]

:[25]
push.v self.num
pushi.e -1
pushi.e 0
pop.v.v [array]self.pp

:[26]
pushi.e 0
pop.v.i self.i

:[27]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [29]

:[28]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.justplayed
pushi.e 1
sub.i.v
pop.i.v [array]self.justplayed
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.played
pushi.e 1
sub.i.v
pop.i.v [array]self.played
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [27]

:[29]
pushi.e 1
pop.v.i global.interact
push.v self.buffer
pushi.e 1
sub.i.v
pop.v.v self.buffer
pushi.e 1
conv.i.v
call.i control_check(argc=1)
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
pushi.e 0
pop.v.i self.coff

:[31]
push.v self.buffer
pushi.e 0
cmp.i.v LT
bf [34]

:[32]
pushi.e 1
conv.i.v
call.i control_check(argc=1)
conv.v.b
bf [34]

:[33]
push.v self.coff
pushi.e 1
add.i.v
pop.v.v self.coff

:[34]
push.v self.coff
pushi.e 1
cmp.i.v GT
bf [end]

:[35]
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]
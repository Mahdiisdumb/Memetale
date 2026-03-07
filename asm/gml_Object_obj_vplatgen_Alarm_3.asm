.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 3
pop.v.i self.vvv

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.d 4.5
pop.v.d self.vvv

:[4]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 5
pop.v.i self.vvv

:[6]
pushi.e 8
pushi.e 10
conv.i.v
pushi.e 5
conv.i.v
call.i choose(argc=2)
add.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 350
conv.i.v
call.i scr_hplat(argc=4)
popz.v
push.v self.vvv
push.v self.bone
conv.v.i
pop.v.v [stacktop]self.vspeed
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 40
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 80
sub.i.v
call.i random(argc=1)
add.v.v
push.v self.bone
conv.v.i
pop.v.v [stacktop]self.x
pushi.e 15
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 12
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[8]
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=5)
push.v self.bone
conv.v.i
pop.v.v [stacktop]self.z_b
push.d 0.1
conv.d.v
push.d 0.08
conv.d.v
push.d 0.12
conv.d.v
call.i choose(argc=3)
push.v self.bone
conv.v.i
pop.v.v [stacktop]self.z_a
push.v self.non
pushi.e 0
cmp.i.v EQ
bf [end]

:[9]
pushi.e 0
push.v self.bone
conv.v.i
pop.v.i [stacktop]self.z_b
pushi.e 60
push.v self.bone
conv.v.i
pop.v.i [stacktop]self.len
pushi.e 1
pop.v.i self.non

:[end]
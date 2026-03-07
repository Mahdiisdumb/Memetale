.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 95
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
push.v self.coherent
pushi.e 1
cmp.i.v EQ
bf [10]

:[1]
push.s "obj_memoryhead_166"@17083
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mycommand
pushi.e 75
cmp.i.v LT
bf [3]

:[2]
push.s "obj_memoryhead_167"@17085
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
bf [5]

:[4]
push.s "obj_memoryhead_168"@17087
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
push.v self.mycommand
pushi.e 25
cmp.i.v LT
bf [7]

:[6]
push.s "obj_memoryhead_169"@17089
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_memoryhead_171"@17090
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns

:[10]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [15]

:[11]
push.s "obj_memoryhead_181"@17092
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mycommand
pushi.e 33
cmp.i.v GT
bf [13]

:[12]
push.s "obj_memoryhead_182"@17094
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[13]
push.v self.mycommand
pushi.e 66
cmp.i.v GT
bf [15]

:[14]
push.s "obj_memoryhead_183"@17096
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [20]

:[16]
push.s "obj_memoryhead_188"@17098
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mycommand
pushi.e 33
cmp.i.v GT
bf [18]

:[17]
push.s "obj_memoryhead_189"@17100
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
push.v self.mycommand
pushi.e 66
cmp.i.v GT
bf [20]

:[19]
push.s "obj_memoryhead_190"@17102
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
push.s "obj_memoryhead_195"@17103
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
pop.v.i global.typer
push.v self.coherent
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
b [23]

:[22]
pushi.e 541
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.sq
pushi.e 6
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.dd
push.d 0.9
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
push.d 0.3
conv.d.v
pushi.e -1
push.v self.dd
conv.v.i
push.v [array]self.ds
call.i caster_loop(argc=3)
pop.v.v self.dnoise
push.d 0.1
push.d 0.8
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.dnoise
call.i caster_set_panning(argc=2)
popz.v

:[23]
pushi.e 5
pop.v.i global.border
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.y

:[end]
.localvar 0 arguments

:[0]
push.v self.writer
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [7]

:[2]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [7]

:[3]
push.v self.writer
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v EQ
bf [6]

:[4]
pushglb.v global.typer
pushi.e 10
cmp.i.v NEQ
bf [6]

:[5]
pushi.e -5
pushi.e 25
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
push.v self.writer
conv.v.i
push.v [stacktop]self.originalstring
call.i string_length(argc=1)
push.v self.writer
conv.v.i
pop.v.v [stacktop]self.stringpos

:[6]
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[7]
pushglb.v global.facechange
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.i global.facechange

:[9]
pushglb.v global.facechange
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushglb.v global.facechoice
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [20]

:[13]
push.v self.writer
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[14]
push.v self.xx
pushi.e 30
add.i.v
push.v self.writer
conv.v.i
pop.v.v [stacktop]self.x
push.v self.writer
conv.v.i
push.v [stacktop]self.x
push.v self.writer
conv.v.i
pop.v.v [stacktop]self.writingx
push.v self.writer
conv.v.i
push.v [stacktop]self.writingxend_base
push.v self.writer
conv.v.i
pop.v.v [stacktop]self.writingxend

:[15]
pushi.e 775
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
bf [19]

:[16]
pushi.e 775
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]

:[19]
pushi.e 2
pop.v.i global.facechange

:[20]
pushglb.v global.facechange
pushi.e 1
cmp.i.v EQ
bf [end]

:[21]
push.v self.writer
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[22]
push.v self.xx
pushi.e 68
add.i.v
push.v self.writer
conv.v.i
pop.v.v [stacktop]self.x
push.v self.writer
conv.v.i
push.v [stacktop]self.x
pushi.e 20
add.i.v
push.v self.writer
conv.v.i
pop.v.v [stacktop]self.writingx
push.v self.writer
conv.v.i
push.v [stacktop]self.writingxend_base
push.v self.writer
conv.v.i
pop.v.v [stacktop]self.writingxend
pushglb.v global.facechoice
pushi.e 1
cmp.i.v EQ
bf [28]

:[23]
pushi.e 766
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [25]

:[24]
pushi.e 768
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 149
conv.i.v
call.i script_execute(argc=1)
popz.v

:[28]
pushglb.v global.facechoice
pushi.e 2
cmp.i.v EQ
bf [31]

:[29]
pushi.e 769
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [31]

:[30]
pushi.e 149
conv.i.v
call.i script_execute(argc=1)
popz.v

:[31]
pushglb.v global.facechoice
pushi.e 3
cmp.i.v EQ
bf [34]

:[32]
pushi.e 777
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [34]

:[33]
pushi.e 149
conv.i.v
call.i script_execute(argc=1)
popz.v

:[34]
pushglb.v global.facechoice
pushi.e 4
cmp.i.v EQ
bf [39]

:[35]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [37]

:[36]
push.v self.xx
pushi.e 10
add.i.v
push.v self.writer
conv.v.i
pop.v.v [stacktop]self.x
push.v self.xx
pushi.e 30
add.i.v
push.v self.writer
conv.v.i
pop.v.v [stacktop]self.writingx
push.v self.writer
conv.v.i
push.v [stacktop]self.writingxend_base
pushi.e 38
sub.i.v
push.v self.writer
conv.v.i
pop.v.v [stacktop]self.writingxend

:[37]
pushi.e 776
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [39]

:[38]
pushi.e 149
conv.i.v
call.i script_execute(argc=1)
popz.v

:[39]
pushglb.v global.facechoice
pushi.e 5
cmp.i.v EQ
bf [42]

:[40]
pushi.e 778
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [42]

:[41]
pushi.e 149
conv.i.v
call.i script_execute(argc=1)
popz.v

:[42]
pushglb.v global.facechoice
pushi.e 6
cmp.i.v EQ
bf [45]

:[43]
pushi.e 771
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [45]

:[44]
pushi.e 149
conv.i.v
call.i script_execute(argc=1)
popz.v

:[45]
pushglb.v global.facechoice
pushi.e 7
cmp.i.v EQ
bf [48]

:[46]
pushi.e 772
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [48]

:[47]
pushi.e 149
conv.i.v
call.i script_execute(argc=1)
popz.v

:[48]
pushglb.v global.facechoice
pushi.e 8
cmp.i.v EQ
bf [51]

:[49]
pushi.e 774
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [51]

:[50]
pushi.e 149
conv.i.v
call.i script_execute(argc=1)
popz.v

:[51]
pushglb.v global.facechoice
pushi.e 9
cmp.i.v EQ
bf [54]

:[52]
pushi.e 773
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [54]

:[53]
pushi.e 149
conv.i.v
call.i script_execute(argc=1)
popz.v

:[54]
pushi.e 2
pop.v.i global.facechange

:[end]
.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.count
pushi.e 0
pop.v.i self.side
pushi.e 1
pop.v.i global.facechange
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pop.v.v self.xx
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pop.v.v self.yy
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 1576.y
push.v self.yy
pushi.e 130
add.i.v
cmp.v.v GT
bf [11]

:[2]
pushi.e 0
pop.v.i self.side
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [4]

:[3]
pushglb.v global.facechoice
pushi.e 4
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 784
conv.i.v
push.v self.yy
pushi.e 5
sub.i.v
push.v self.xx
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.writer
push.v self.writer
conv.v.i
push.v [stacktop]self.writingxend_base
pushi.e 38
sub.i.v
push.v self.writer
conv.v.i
pop.v.v [stacktop]self.writingxend
pushi.e 149
conv.i.v
call.i script_execute(argc=1)
popz.v
b [10]

:[7]
pushglb.v global.facechoice
pushi.e 0
cmp.i.v NEQ
bf [9]

:[8]
pushi.e 784
conv.i.v
push.v self.yy
pushi.e 5
sub.i.v
push.v self.xx
pushi.e 68
add.i.v
call.i instance_create(argc=3)
pop.v.v self.writer
pushi.e 149
conv.i.v
call.i script_execute(argc=1)
popz.v
b [10]

:[9]
pushi.e 784
conv.i.v
push.v self.yy
pushi.e 5
sub.i.v
push.v self.xx
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.writer

:[10]
b [end]

:[11]
pushi.e 1
pop.v.i self.side
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [13]

:[12]
pushglb.v global.facechoice
pushi.e 4
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 784
conv.i.v
push.v self.yy
pushi.e 150
add.i.v
push.v self.xx
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.writer
push.v self.writer
conv.v.i
push.v [stacktop]self.writingxend_base
pushi.e 38
sub.i.v
push.v self.writer
conv.v.i
pop.v.v [stacktop]self.writingxend
pushi.e 149
conv.i.v
call.i script_execute(argc=1)
popz.v
b [end]

:[16]
pushglb.v global.facechoice
pushi.e 0
cmp.i.v NEQ
bf [18]

:[17]
pushi.e 784
conv.i.v
push.v self.yy
pushi.e 150
add.i.v
push.v self.xx
pushi.e 68
add.i.v
call.i instance_create(argc=3)
pop.v.v self.writer
pushi.e 149
conv.i.v
call.i script_execute(argc=1)
popz.v
b [end]

:[18]
pushi.e 784
conv.i.v
push.v self.yy
pushi.e 150
add.i.v
push.v self.xx
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.writer

:[end]
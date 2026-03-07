.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 499
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [9]

:[1]
pushi.e 0
pop.v.i global.cast_type
pushi.e 1
pushi.e -5
pushi.e 499
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.splitter
push.v self.splitter
pushi.e 1
cmp.i.v EQ
bf [8]

:[2]
pushi.e 1691
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ts
push.v self.ts
conv.v.i
pushenv [7]

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 99
cmp.i.v LT
bf [6]

:[5]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.split
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
pushi.e 0
pop.v.i self.splitno

:[7]
popenv [3]

:[8]
call.i scr_loadendsong(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.endsong
call.i caster_play(argc=3)
popz.v

:[9]
pushi.e 0
pop.v.i self.timer
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.active
push.d 0.9
pop.v.d self.vol
pushi.e 0
pop.v.i self.do_room_goto
pushi.e 210
pop.v.i self.col1_x
pushi.e 430
pop.v.i self.col2_x
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [end]

:[10]
push.v self.col1_x
pushi.e 15
sub.i.v
pop.v.v self.col1_x
push.v self.col2_x
pushi.e 15
add.i.v
pop.v.v self.col2_x

:[end]
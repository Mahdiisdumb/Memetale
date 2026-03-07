.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i global.msc
pushi.e 60
pop.v.i global.typer
pushi.e 7
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_asgore_prebarrier_event_78"@10014
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgore_prebarrier_event_79"@10016
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgore_prebarrier_event_80"@10018
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 207
pop.v.i global.plot
pushi.e 50
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 3
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.asg
conv.v.i
push.v [stacktop]self.rsprite
push.v self.asg
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.2
push.v self.asg
conv.v.i
pop.v.d [stacktop]self.image_speed

:[7]
push.v self.con
pushi.e 50
cmp.i.v EQ
bt [10]

:[8]
push.v self.con
pushi.e 51
cmp.i.v EQ
bt [10]

:[9]
push.v self.con
pushi.e 52
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [14]

:[12]
push.v self.asg
conv.v.i
push.v [stacktop]self.x
pushi.e 580
cmp.i.v GT
bf [14]

:[13]
pushi.e 580
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.x
push.v self.asg
conv.v.i
push.v [stacktop]self.utsprite
push.v self.asg
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.image_index

:[14]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [17]

:[15]
push.v 1576.x
pushi.e 480
cmp.i.v GT
bf [17]

:[16]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.msc
pushi.e 60
pop.v.i global.typer
pushi.e 7
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_asgore_prebarrier_event_112"@10020
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgore_prebarrier_event_113"@10022
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgore_prebarrier_event_114"@10024
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 51
pop.v.i self.con

:[20]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [22]

:[21]
push.v self.asg
conv.v.i
push.v [stacktop]self.x
pushi.e 580
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 208
pop.v.i global.plot
pushi.e 52
pop.v.i self.con

:[25]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [27]

:[26]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [end]

:[29]
pushi.e 0
pop.v.i global.interact
push.v self.asg
conv.v.i
push.v [stacktop]self.usprite
push.v self.asg
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.25
push.v self.asg
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e -2
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.asg
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.05
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.asg
conv.v.i
push.v [stacktop]self.image_alpha
push.d 0.1
cmp.d.v LT
bf [end]

:[30]
push.v self.asg
conv.v.i
pushenv [32]

:[31]
call.i instance_destroy(argc=0)
popz.v

:[32]
popenv [31]
call.i instance_destroy(argc=0)
popz.v

:[end]
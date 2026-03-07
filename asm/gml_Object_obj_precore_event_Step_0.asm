.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 2
pop.v.i self.con
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pop.v.v self.remy

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [5]

:[3]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 3
sub.i.v
pop.i.v [array]self.view_yview
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 122
cmp.i.v LTE
bf [5]

:[4]
pushi.e 120
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview
pushi.e 3
pop.v.i self.con

:[5]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
pushi.e 4
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[7]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [11]

:[8]
pushi.e 1262
pushenv [10]

:[9]
pushi.e 1
pop.v.i self.mov

:[10]
popenv [9]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 176
pop.v.i global.plot
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
pushi.e 5
pop.v.i global.typer
push.s "obj_precore_event_117"@21754
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_precore_event_118"@21755
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_precore_event_119"@21757
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_precore_event_120"@21759
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_precore_event_121"@21761
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_precore_event_122"@21762
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_precore_event_123"@21763
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ge
pushi.e 1
push.v self.ge
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 6
pop.v.i self.con

:[11]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [13]

:[12]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 7
pop.v.i self.con

:[16]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [19]

:[17]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 5
add.i.v
pop.i.v [array]self.view_yview
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.remy
pushi.e 2
sub.i.v
cmp.v.v GTE
bf [19]

:[18]
push.v self.remy
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview
pushi.e 8
pop.v.i self.con

:[19]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [end]

:[20]
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 0
pop.v.i global.interact
pushi.e 9
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]
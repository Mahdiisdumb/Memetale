.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.playthesong
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.s "music/undynetruetheme.ogg"@2853
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.undyne
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.undyne
call.i caster_loop(argc=3)
popz.v
pushi.e 1
pop.v.i self.playthesong

:[3]
pushi.e 1
pushi.e -5
pushi.e 18
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.fakedrawer
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shake(argc=3)
popz.v
push.v self.object_index
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_object
pushi.e 160
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_hborder
pushi.e 100
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_vborder
pushi.e 160
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_wview
pushi.e 120
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_hview
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_undynetrigger_boss_638"@29673
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 150
push.v self.yy
add.v.i
pushi.e 10
push.v self.xx
add.v.i
call.i instance_create(argc=3)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.view_angle
pushi.e 0
cmp.i.v LTE
bf [5]

:[4]
pushi.e 10
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_angle
b [end]

:[5]
pushi.e -1
pushi.e 40
conv.i.v
call.i random(argc=1)
sub.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_angle

:[end]
.localvar 0 arguments

:[0]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 50
conv.i.v
pushi.e 416
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.ch
pushi.e 0
pop.v.i global.msc
pushi.e 666
pop.v.i global.typer
push.s "obj_gaster_room_34"@13712
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_gaster_room_35"@13714
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_gaster_room_36"@13716
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_gaster_room_37"@13718
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_gaster_room_38"@13720
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_gaster_room_39"@13722
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_gaster_room_40"@13724
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_gaster_room_41"@13726
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_gaster_room_42"@13727
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_gaster_room_43"@13729
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_gaster_room_44"@13730
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_gaster_room_45"@13732
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]
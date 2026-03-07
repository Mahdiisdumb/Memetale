.localvar 0 arguments

:[0]
push.s "obj_torieltrigger12_86"@27548
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.d 7.5
pop.v.d self.conversation

:[end]
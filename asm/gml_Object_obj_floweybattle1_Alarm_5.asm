.localvar 0 arguments

:[0]
push.v self.blconwriter
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 0
pop.v.i global.msc
push.s "obj_floweybattle1_268"@12962
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_floweybattle1_269"@12964
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_floweybattle1_270"@12965
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_floweybattle1_271"@12966
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_floweybattle1_272"@12967
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_floweybattle1_273"@12968
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_floweybattle1_274"@12969
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_floweybattle1_275"@12970
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_floweybattle1_276"@12971
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_floweybattle1_277"@12972
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_floweybattle1_278"@12974
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 787
conv.i.v
push.v 188.y
pushi.e 10
add.i.v
push.v 188.x
pushi.e 40
add.i.v
call.i instance_create(argc=3)
pop.v.v self.funwriter
pushi.e 184
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
push.d 9.4
pop.v.d self.conversation
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 5
cmp.i.v NEQ
bf [end]

:[4]
push.v self.i
pushi.e 611
conv.i.v
call.i instance_find(argc=2)
pop.v.v self.ddd
push.v self.ddd
conv.v.i
push.v [stacktop]self.blonicx
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.x
push.v self.ddd
conv.v.i
push.v [stacktop]self.blonicy
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 1
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.attackyou
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[end]
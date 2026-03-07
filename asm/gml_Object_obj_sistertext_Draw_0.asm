.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [9]

:[1]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.v self.done
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
push.v self.hypefade
push.d 0.1
sub.d.v
pop.v.v self.hypefade

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
push.v self.amt
cmp.v.v LT
bf [8]

:[5]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fade
push.v self.hypefade
mul.v.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.this_phrase
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.wherey
push.v self.i
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
add.v.v
call.i cos(argc=1)
pushi.e 5
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.wherex
push.v self.i
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fade
pushi.e 1
cmp.i.v LT
bf [7]

:[6]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.fade
push.d 0.2
add.d.v
pop.i.v [array]self.fade

:[7]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[8]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[9]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.done
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 2
pop.v.i self.done

:[14]
push.v self.hypefade
pushi.e 0
cmp.i.v LTE
bf [end]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[end]
.localvar 0 arguments

:[0]
push.v self.blacker
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
pushi.e 240
conv.i.v
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[2]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [end]

:[3]
push.v self.flasher
pushi.e 1
cmp.i.v EQ
bt [5]

:[4]
push.v self.flasher
pushi.e 2
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [end]

:[7]
push.v self.flasher
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.flashamt
push.d 0.2
add.d.v
pop.v.v self.flashamt

:[9]
push.v self.flashamt
pushi.e 2
cmp.i.v GT
bf [17]

:[10]
push.v self.presong
call.i caster_stop(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.flashsound
call.i caster_play(argc=3)
popz.v
pushi.e 2
pop.v.i self.flasher
push.v self.n
conv.v.i
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]
push.v self.n2
conv.v.i
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]
pushi.e 0
pop.v.i self.cloud
pushi.e 405
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 409
pop.v.i self.mb
pushi.e 1
push.v self.mb
conv.v.i
pop.v.i [stacktop]self.sineron
push.i 16777215
push.v self.mb
conv.v.i
pop.v.i [stacktop]self.myblend
pushi.e 1
push.v self.mb
conv.v.i
pop.v.i [stacktop]self.myalpha
pushi.e 0
pop.v.i self.blacker

:[17]
push.v self.flasher
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
push.v self.flashamt
push.d 0.4
sub.d.v
pop.v.v self.flashamt

:[19]
push.v self.flashamt
pushi.e 0
cmp.i.v LT
bf [21]

:[20]
pushi.e 0
pop.v.i self.flasher
pushi.e 9
pop.v.i self.con

:[21]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.flashamt
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 700
conv.i.v
pushi.e 700
conv.i.v
pushi.e -1
conv.i.v
pushi.e -1
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]
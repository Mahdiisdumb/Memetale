.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 1
push.v [array]self.pspeed
pushi.e 2
mul.i.v
pop.v.v self.image_angle
push.v self.hspeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.pspeed
pushi.e 4
pop.v.i self.i

:[1]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.pspeed
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pspeed
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
conv.v.b
bf [5]

:[4]
push.v self.tang
pushi.e 1
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [21]

:[7]
pushi.e 299
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[8]
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
pop.v.v self.jimbo
push.v self.jimbo
conv.v.i
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
push.v self.hit
pushi.e 1
add.i.v
pop.v.v self.hit
push.v self.hit
pushi.e 8
cmp.i.v LT
bf [12]

:[11]
pushi.e 60
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[12]
push.v self.shudderon
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i self.shudderon

:[14]
pushi.e 10
pop.v.i self.shudder

:[15]
pushi.e 300
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [21]

:[16]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e 1
pop.v.i self.hitted
pushi.e 30
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 50
pop.v.i global.turntimer

:[18]
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
pop.v.v self.jimbo
pushi.e 741
conv.i.v
push.v self.jimbo
conv.v.i
push.v [stacktop]self.y
push.v self.jimbo
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.gi
push.v self.jimbo
conv.v.i
push.v [stacktop]self.image_yscale
push.v self.gi
conv.v.i
pop.v.v [stacktop]self.image_yscale
push.v self.jimbo
conv.v.i
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]

:[21]
push.v self.shudderon
pushi.e 1
cmp.i.v EQ
bf [end]

:[22]
push.v self.sha
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
push.v self.x
pop.v.v self.sha

:[24]
push.v self.sha
push.v self.shudder
add.v.v
pop.v.v self.x
push.v self.shudder
pushi.e 0
cmp.i.v LT
bf [26]

:[25]
push.v self.shudder
pushi.e 1
add.i.v
neg.v
pop.v.v self.shudder
b [27]

:[26]
push.v self.shudder
neg.v
pop.v.v self.shudder

:[27]
push.v self.shudder
pushi.e 0
cmp.i.v EQ
bf [end]

:[28]
pushi.e 0
pop.v.i self.sha
pushi.e 0
pop.v.i self.shudderon

:[end]
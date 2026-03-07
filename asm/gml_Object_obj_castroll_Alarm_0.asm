.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i global.inbattle
pushglb.v global.cast_type
pop.v.v self.type
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 605
conv.i.v
pushi.e 600
conv.i.v
push.v self.col1_x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.froggit
pushi.e 1
push.v self.froggit
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 605
conv.i.v
pushi.e 600
conv.i.v
push.v self.col2_x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.whimsun
pushi.e 2
push.v self.whimsun
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 605
conv.i.v
pushi.e 940
conv.i.v
push.v self.col1_x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.moldsmal
pushi.e 3
push.v self.moldsmal
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 605
conv.i.v
pushi.e 940
conv.i.v
push.v self.col2_x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.loox
pushi.e 6
push.v self.loox
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 605
conv.i.v
pushi.e 1280
conv.i.v
push.v self.col1_x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.vegetoid
pushi.e 7
push.v self.vegetoid
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 605
conv.i.v
pushi.e 1280
conv.i.v
push.v self.col2_x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.migosp
pushi.e 5
push.v self.migosp
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 605
conv.i.v
pushi.e 1620
conv.i.v
pushi.e 280
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.napstablook
pushi.e 4
push.v self.napstablook
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 2
pop.v.i self.active

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 605
conv.i.v
pushi.e 600
conv.i.v
push.v self.col1_x
pushi.e 100
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.snowdrake
pushi.e 11
push.v self.snowdrake
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 605
conv.i.v
pushi.e 600
conv.i.v
push.v self.col2_x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.icecap
pushi.e 10
push.v self.icecap
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 2
push.v self.icecap
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 605
conv.i.v
pushi.e 1040
conv.i.v
push.v self.col1_x
pushi.e 100
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gyftrot
pushi.e 12
push.v self.gyftrot
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 2
push.v self.gyftrot
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gyftrot
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 605
conv.i.v
pushi.e 1040
conv.i.v
push.v self.col2_x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.doggo
pushi.e 13
push.v self.doggo
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 2
push.v self.doggo
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 605
conv.i.v
pushi.e 1480
conv.i.v
pushi.e 208
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dogamy
pushi.e 14
push.v self.dogamy
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 2
push.v self.dogamy
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.dogamy
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 605
conv.i.v
pushi.e 1920
conv.i.v
push.v self.col1_x
pushi.e 70
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.lesserdog
pushi.e 8
push.v self.lesserdog
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
push.v self.lesserdog
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.lesserdog
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 605
conv.i.v
pushi.e 1920
conv.i.v
push.v self.col2_x
pushi.e 80
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.greaterdog
pushi.e 9
push.v self.greaterdog
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 2
push.v self.greaterdog
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.greaterdog
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 1
pop.v.i self.active

:[4]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 605
conv.i.v
pushi.e 600
conv.i.v
push.v self.col1_x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.aaron
pushi.e 16
push.v self.aaron
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 2
push.v self.aaron
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.aaron
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 605
conv.i.v
pushi.e 600
conv.i.v
push.v self.col2_x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.moldbygg
pushi.e 19
push.v self.moldbygg
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 2
push.v self.moldbygg
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 605
conv.i.v
pushi.e 1040
conv.i.v
push.v self.col1_x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.woshua
pushi.e 15
push.v self.woshua
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 605
conv.i.v
pushi.e 1040
conv.i.v
push.v self.col2_x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.Mahdii
pushi.e 18
push.v self.Mahdii
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
push.v self.Mahdii
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 605
conv.i.v
pushi.e 1380
conv.i.v
push.v self.col1_x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.maddummy
pushi.e 20
push.v self.maddummy
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
push.v self.maddummy
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.maddummy
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 605
conv.i.v
pushi.e 1380
conv.i.v
push.v self.col2_x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.shyren
pushi.e 17
push.v self.shyren
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
push.v self.shyren
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.shyren
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 1
pop.v.i self.active

:[6]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [end]

:[7]
pushi.e 605
conv.i.v
pushi.e 700
conv.i.v
push.v self.col1_x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.vulkin
pushi.e 22
push.v self.vulkin
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 605
conv.i.v
pushi.e 600
conv.i.v
push.v self.col2_x
pushi.e 90
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.tsunderplane
pushi.e 2
push.v self.tsunderplane
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 2
push.v self.tsunderplane
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 23
push.v self.tsunderplane
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 605
conv.i.v
pushi.e 1040
conv.i.v
push.v self.col1_x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.pyrope
pushi.e 2
push.v self.pyrope
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 24
push.v self.pyrope
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 605
conv.i.v
pushi.e 1040
conv.i.v
push.v self.col2_x
pushi.e 95
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.muffet
pushi.e 2
push.v self.muffet
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 2
push.v self.muffet
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 25
push.v self.muffet
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 605
conv.i.v
pushi.e 1480
conv.i.v
pushi.e 150
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.knighta
pushi.e 2
push.v self.knighta
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 2
push.v self.knighta
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 21
push.v self.knighta
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 605
conv.i.v
pushi.e 1940
conv.i.v
push.v self.col1_x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.finalfroggit
pushi.e 28
push.v self.finalfroggit
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 605
conv.i.v
pushi.e 1940
conv.i.v
push.v self.col2_x
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.whimsalot
pushi.e 29
push.v self.whimsalot
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 605
conv.i.v
pushi.e 2260
conv.i.v
pushi.e 270
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.astigmatism
pushi.e 30
push.v self.astigmatism
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 605
conv.i.v
pushi.e 2600
conv.i.v
push.v self.col1_x
pushi.e 100
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.madjick
pushi.e 26
push.v self.madjick
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 2
push.v self.madjick
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.madjick
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 605
conv.i.v
pushi.e 2600
conv.i.v
pushi.e 360
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.knightknight
pushi.e 27
push.v self.knightknight
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 2
push.v self.knightknight
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 2
push.v self.knightknight
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 605
conv.i.v
pushi.e 3040
conv.i.v
pushi.e 70
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.amalgamate1
pushi.e 32
push.v self.amalgamate1
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
push.v self.amalgamate1
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.amalgamate1
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 605
conv.i.v
pushi.e 3140
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.amalgamate2
pushi.e 31
push.v self.amalgamate2
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
push.v self.amalgamate2
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.amalgamate2
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 605
conv.i.v
pushi.e 3040
conv.i.v
pushi.e 290
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.amalgamate3
pushi.e 33
push.v self.amalgamate3
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 2
push.v self.amalgamate3
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 2
push.v self.amalgamate3
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 605
conv.i.v
pushi.e 3140
conv.i.v
pushi.e 500
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.amalgamate4
pushi.e 34
push.v self.amalgamate4
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
push.v self.amalgamate4
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.amalgamate4
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 1
pop.v.i self.active

:[end]
sip -V -cgnd 2 -s -o -sub 2 -mlc me7,me8 -n 16 -i 0,16.001 -b 	me8,me7,me6,me5,me4,me3,me2,me1,ply,dif,sub -j 3 -Maxw 45 -p 	alrdl,key 0,16 - alrdl.sip
sip -V -cgnd 2 -s -o -sub 2 -mlc me5,me6 -n 8 -i 0,8.001 -b 	me6,me5,me4,me3,me2,me1,ply,dif,sub -t me8,alrdl -j 0.4 -Maxw 6 -p 	me7,key 0,8 - me7.sip
sip -V -cgnd 2 -s -o -sub 2 -mlc me6,me7 -n 8 -i 0,8.001 -b 	me7,me6,me5,me4,me3,me2,me1,ply,dif,sub -t alrdl -j 0.4 -Maxw 6 -p 	me8,key 0,8 - me8.sip
sip -V -cgnd 2 -s -o -sub 2 -cp ply,Allgates,dif -n 2 -i 0,2.001 	-b dif,sub -t me1,me2,me3,me4,me5,me6,me7,me8,alrdl -j 0.12 -Maxw 1.8 	-p ply,key 0,2 - ply.sip
sip -V -cgnd 2 -s -o -sub 2 -mlc ply -n 3.2 -i 0,3.201 -b 	ply,dif,sub -t me2,me3,me4,me5,me6,me7,me8,alrdl -j 0.16 -Maxw 2.4 -p 	me1,key 0,3.2 - me1.sip
sip -V -cgnd 2 -s -o -sub 2 -mlc ply,me1 -n 3.2 -i 0,3.201 -b 	me1,ply,dif,sub -t me3,me4,me5,me6,me7,me8,alrdl -j 0.2 -Maxw 3 -p 	me2,key 0,3.2 - me2.sip
sip -V -cgnd 2 -s -o -sub 2 -mlc me1,me2 -n 3.2 -i 0,3.201 -b 	me2,me1,ply,dif,sub -t me4,me5,me6,me7,me8,alrdl -j 0.2 -Maxw 3 -p 	me3,key 0,3.2 - me3.sip
sip -V -cgnd 2 -s -o -sub 2 -mlc me2,me3 -n 3.2 -i 0,3.201 -b 	me3,me2,me1,ply,dif,sub -t me5,me6,me7,me8,alrdl -j 0.2 -Maxw 3 -p 	me4,key 0,3.2 - me4.sip
sip -V -cgnd 2 -s -o -sub 2 -mlc me3,me4 -n 3.2 -i 0,3.201 -b 	me4,me3,me2,me1,ply,dif,sub -t me6,me7,me8,alrdl -j 0.2 -Maxw 3 -p 	me5,key 0,3.2 - me5.sip
sip -V -cgnd 2 -s -o -sub 2 -mlc me4,me5 -n 3.2 -i 0,3.201 -b 	me5,me4,me3,me2,me1,ply,dif,sub -t me7,me8,alrdl -j 0.2 -Maxw 3 -p 	me6,key 0,3.2 - me6.sip
sip -V -s -cgnd 2 -sub 2 -L3A -h -b 	me7,me6,me5,me4,me3,me2,me1,ply,dif,sub -Maxw 45 -p me8,key,alrdl,key 	0,16,0 - me8_alrdl.sip
sip -V -s -cgnd 2 -sub 2 -L3A -h -R alrdl -b 	me6,me5,me4,me3,me2,me1,ply,dif,sub -Maxw 45 -p me7,key,alrdl,key 	0,16,0 - me7_alrdl.sip
sip -V -s -cgnd 2 -sub 2 -h -b 	me6,me5,me4,me3,me2,me1,ply,dif,sub -t alrdl -Maxw 6 -p 	me7,key,me8,key 0,8,0 - me7_me8.sip
sip -V -s -cgnd 2 -sub 2 -L3A -h -R me8 -b 	me5,me4,me3,me2,me1,ply,dif,sub -t alrdl -Maxw 6 -p 	me6:me6_cut,key,me8,key 0,8,0 - me6_me8.sip
sip -V -s -cgnd 2 -sub 2 -h -b me5,me4,me3,me2,me1,ply,dif,sub -t 	me8,alrdl -Maxw 6 -p me6:me6_cut,key,me7,key 0,8,0 - me6_me7.sip
sip -V -s -cgnd 2 -sub 2 -L3A -h -R me7 -b 	me4,me3,me2,me1,ply,dif,sub -t me8,alrdl -k me6:0.32 -Maxw 6 -p 	me5:me5_cut,key,me7,key 0,8,0 - me5_me7.sip
sip -V -s -cgnd 2 -sub 2 -h -b me4,me3,me2,me1,ply,dif,sub -t 	me7,me8,alrdl -Maxw 3 -p me5:me5_cut,key,me6:me6_cut,key 0,3.2,0 - 	me5_me6.sip
sip -V -s -cgnd 2 -sub 2 -L3A -h -R me6 -b 	me3,me2,me1,ply,dif,sub -t me7,me8,alrdl -k me5:0.32 -Maxw 3 -p 	me4:me4_cut,key,me6:me6_cut,key 0,3.2,0 - me4_me6.sip
sip -V -s -cgnd 2 -sub 2 -h -b me3,me2,me1,ply,dif,sub -t 	me6,me7,me8,alrdl -Maxw 3 -p me4:me4_cut,key,me5:me5_cut,key 0,3.2,0 	- me4_me5.sip
sip -V -s -cgnd 2 -sub 2 -L3A -h -R me5 -b me2,me1,ply,dif,sub -t 	me6,me7,me8,alrdl -k me4:0.32 -Maxw 3 -p 	me3:me3_cut,key,me5:me5_cut,key 0,3.2,0 - me3_me5.sip
sip -V -s -cgnd 2 -sub 2 -h -b me2,me1,ply,dif,sub -t 	me5,me6,me7,me8,alrdl -Maxw 3 -p me3:me3_cut,key,me4:me4_cut,key 	0,3.2,0 - me3_me4.sip
sip -V -s -cgnd 2 -sub 2 -L3A -h -R me4 -b me1,ply,dif,sub -t 	me5,me6,me7,me8,alrdl -k me3:0.32 -Maxw 3 -p 	me2:me2_cut,key,me4:me4_cut,key 0,3.2,0 - me2_me4.sip
sip -V -s -cgnd 2 -sub 2 -h -b me1,ply,dif,sub -t 	me4,me5,me6,me7,me8,alrdl -Maxw 3 -p me2:me2_cut,key,me3:me3_cut,key 	0,3.2,0 - me2_me3.sip
sip -V -s -cgnd 2 -sub 2 -L3A -h -R me3 -b ply,dif,sub -t 	me4,me5,me6,me7,me8,alrdl -k me2:0.32 -Maxw 3 -p 	me1:me1_cut,key,me3:me3_cut,key 0,3.2,0 - me1_me3.sip
sip -V -s -cgnd 2 -sub 2 -h -b ply,dif,sub -t 	me3,me4,me5,me6,me7,me8,alrdl -Maxw 3 -p 	me1:me1_cut,key,me2:me2_cut,key 0,3.2,0 - me1_me2.sip
sip -V -s -cgnd 2 -sub 2 -L3A -h -R me2 -b dif,sub -t 	me3,me4,me5,me6,me7,me8,alrdl -k me1:0.32 -Maxw 3 -p 	ply:ply_cut,key,me2:me2_cut,key 0,3.2,0 - ply_me2.sip
sip -V -s -cgnd 2 -sub 2 -h -R me1,ply -b dif,sub -t 	me2,me3,me4,me5,me6,me7,me8,alrdl -Maxw 2.4 -p 	ply:ply_cut,key,me1:me1_cut,key 0,3.2,0 - ply_me1.sip
sw3d -V -cgnd 2 -sub 2 -b me7,me6,me5,me4,me3,me2,me1,ply,dif,sub 	-p me8,alrdl - me8_alrdl.sw3d
sw3d -V -cgnd 2 -sub 2 -b me6,me5,me4,me3,me2,me1,ply,dif,sub -t 	alrdl -p me7,me8 - me7_me8.sw3d
sw3d -V -cgnd 2 -sub 2 -b me5,me4,me3,me2,me1,ply,dif,sub -t 	me8,alrdl -p me6:me6_cut,me7 - me6_me7.sw3d
sw3d -V -cgnd 2 -sub 2 -b me4,me3,me2,me1,ply,dif,sub -t 	me7,me8,alrdl -p me5:me5_cut,me6:me6_cut - me5_me6.sw3d
sw3d -V -cgnd 2 -sub 2 -b me3,me2,me1,ply,dif,sub -t 	me6,me7,me8,alrdl -p me4:me4_cut,me5:me5_cut - me4_me5.sw3d
sw3d -V -cgnd 2 -sub 2 -b me2,me1,ply,dif,sub -t 	me5,me6,me7,me8,alrdl -p me3:me3_cut,me4:me4_cut - me3_me4.sw3d
sw3d -V -cgnd 2 -sub 2 -b me1,ply,dif,sub -t 	me4,me5,me6,me7,me8,alrdl -p me2:me2_cut,me3:me3_cut - me2_me3.sw3d
sw3d -V -cgnd 2 -sub 2 -b ply,dif,sub -t 	me3,me4,me5,me6,me7,me8,alrdl -p me1:me1_cut,me2:me2_cut - 	me1_me2.sw3d
sw3d -V -cgnd 2 -sub 2 -b dif,sub -t 	me2,me3,me4,me5,me6,me7,me8,alrdl -p ply:ply_cut,me1:me1_cut - 	ply_me1.sw3d

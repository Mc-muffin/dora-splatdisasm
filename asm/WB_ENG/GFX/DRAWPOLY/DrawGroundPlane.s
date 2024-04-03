.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel DrawGroundPlane
/* 501C0 8005F9C0 801F0A3C */  lui        $t2, (0x1F800010 >> 16)
/* 501C4 8005F9C4 10004A35 */  ori        $t2, $t2, (0x1F800010 & 0xFFFF)
/* 501C8 8005F9C8 801F063C */  lui        $a2, (0x1F800020 >> 16)
/* 501CC 8005F9CC 2000C634 */  ori        $a2, $a2, (0x1F800020 & 0xFFFF)
/* 501D0 8005F9D0 801F073C */  lui        $a3, (0x1F800030 >> 16)
/* 501D4 8005F9D4 3000E734 */  ori        $a3, $a3, (0x1F800030 & 0xFFFF)
/* 501D8 8005F9D8 801F083C */  lui        $t0, (0x1F800040 >> 16)
/* 501DC 8005F9DC 40000835 */  ori        $t0, $t0, (0x1F800040 & 0xFFFF)
/* 501E0 8005F9E0 801F093C */  lui        $t1, (0x1F800050 >> 16)
/* 501E4 8005F9E4 50002935 */  ori        $t1, $t1, (0x1F800050 & 0xFFFF)
/* 501E8 8005F9E8 0C80053C */  lui        $a1, %hi(GroundPlane)
/* 501EC 8005F9EC 90E8A524 */  addiu      $a1, $a1, %lo(GroundPlane)
/* 501F0 8005F9F0 0C80023C */  lui        $v0, %hi(GroundPlaneVertices)
/* 501F4 8005F9F4 E0E84224 */  addiu      $v0, $v0, %lo(GroundPlaneVertices)
/* 501F8 8005F9F8 08004424 */  addiu      $a0, $v0, 0x8
/* 501FC 8005F9FC 10004324 */  addiu      $v1, $v0, 0x10
/* 50200 8005FA00 000040C8 */  lwc2       $0, 0x0($v0)
/* 50204 8005FA04 040041C8 */  lwc2       $1, 0x4($v0)
/* 50208 8005FA08 000082C8 */  lwc2       $2, 0x0($a0)
/* 5020C 8005FA0C 040083C8 */  lwc2       $3, 0x4($a0)
/* 50210 8005FA10 000064C8 */  lwc2       $4, 0x0($v1)
/* 50214 8005FA14 040065C8 */  lwc2       $5, 0x4($v1)
/* 50218 8005FA18 00000000 */  nop
/* 5021C 8005FA1C 00000000 */  nop
/* 50220 8005FA20 3000284A */  RTPT
/* 50224 8005FA24 0000CCE8 */  swc2       $12, 0x0($a2)
/* 50228 8005FA28 0000EDE8 */  swc2       $13, 0x0($a3)
/* 5022C 8005FA2C 00000EE9 */  swc2       $14, 0x0($t0)
/* 50230 8005FA30 18004224 */  addiu      $v0, $v0, 0x18
/* 50234 8005FA34 000040C8 */  lwc2       $0, 0x0($v0)
/* 50238 8005FA38 040041C8 */  lwc2       $1, 0x4($v0)
/* 5023C 8005FA3C 00000000 */  nop
/* 50240 8005FA40 00000000 */  nop
/* 50244 8005FA44 0100184A */  RTPS
/* 50248 8005FA48 00002EE9 */  swc2       $14, 0x0($t1)
/* 5024C 8005FA4C 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 50250 8005FA50 00000000 */  nop
/* 50254 8005FA54 C3600C00 */  sra        $t4, $t4, 3
/* 50258 8005FA58 00004CAD */  sw         $t4, 0x0($t2)
/* 5025C 8005FA5C 0980033C */  lui        $v1, %hi(ot_ndx)
/* 50260 8005FA60 4853638C */  lw         $v1, %lo(ot_ndx)($v1)
/* 50264 8005FA64 00000000 */  nop
/* 50268 8005FA68 C0100300 */  sll        $v0, $v1, 3
/* 5026C 8005FA6C 21104300 */  addu       $v0, $v0, $v1
/* 50270 8005FA70 80100200 */  sll        $v0, $v0, 2
/* 50274 8005FA74 0000C38C */  lw         $v1, 0x0($a2)
/* 50278 8005FA78 2128A200 */  addu       $a1, $a1, $v0
/* 5027C 8005FA7C 0800A3AC */  sw         $v1, 0x8($a1)
/* 50280 8005FA80 0000E28C */  lw         $v0, 0x0($a3)
/* 50284 8005FA84 00000000 */  nop
/* 50288 8005FA88 1000A2AC */  sw         $v0, 0x10($a1)
/* 5028C 8005FA8C 0000038D */  lw         $v1, 0x0($t0)
/* 50290 8005FA90 0B80023C */  lui        $v0, %hi(g_nt + 0x4E20)
/* 50294 8005FA94 1800A3AC */  sw         $v1, 0x18($a1)
/* 50298 8005FA98 0000248D */  lw         $a0, 0x0($t1)
/* 5029C 8005FA9C 21304000 */  addu       $a2, $v0, $zero
/* 502A0 8005FAA0 2000A4AC */  sw         $a0, 0x20($a1)
/* 502A4 8005FAA4 8809438C */  lw         $v1, %lo(g_nt + 0x4E20)($v0)
/* 502A8 8005FAA8 00000000 */  nop
/* 502AC 8005FAAC 08006010 */  beqz       $v1, .L8005FAD0
/* 502B0 8005FAB0 88094424 */   addiu     $a0, $v0, %lo(g_nt + 0x4E20)
/* 502B4 8005FAB4 FF00023C */  lui        $v0, (0xFFFFFF >> 16)
/* 502B8 8005FAB8 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
/* 502BC 8005FABC 24106200 */  and        $v0, $v1, $v0
/* 502C0 8005FAC0 0008033C */  lui        $v1, (0x8000000 >> 16)
/* 502C4 8005FAC4 25104300 */  or         $v0, $v0, $v1
/* 502C8 8005FAC8 B57E0108 */  j          .L8005FAD4
/* 502CC 8005FACC 0000A2AC */   sw        $v0, 0x0($a1)
.L8005FAD0:
/* 502D0 8005FAD0 040085AC */  sw         $a1, 0x4($a0)
.L8005FAD4:
/* 502D4 8005FAD4 0800E003 */  jr         $ra
/* 502D8 8005FAD8 8809C5AC */   sw        $a1, %lo(g_nt + 0x4E20)($a2)
.size DrawGroundPlane, . - DrawGroundPlane

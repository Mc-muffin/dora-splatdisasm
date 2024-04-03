.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LookUpNearCrate
/* 122CC 80021ACC 7813828F */  lw         $v0, %gp_rel(g_totalcrate)($gp)
/* 122D0 80021AD0 00000000 */  nop
/* 122D4 80021AD4 20004018 */  blez       $v0, .L80021B58
/* 122D8 80021AD8 21380000 */   addu      $a3, $zero, $zero
/* 122DC 80021ADC 1800A500 */  mult       $a1, $a1
/* 122E0 80021AE0 21484000 */  addu       $t1, $v0, $zero
/* 122E4 80021AE4 0000888C */  lw         $t0, 0x0($a0)
/* 122E8 80021AE8 0800848C */  lw         $a0, 0x8($a0)
/* 122EC 80021AEC 7C13868F */  lw         $a2, %gp_rel(WorldCratePtr)($gp)
/* 122F0 80021AF0 12280000 */  mflo       $a1
.L80021AF4:
/* 122F4 80021AF4 1000C38C */  lw         $v1, 0x10($a2)
/* 122F8 80021AF8 00000000 */  nop
/* 122FC 80021AFC C0190300 */  sll        $v1, $v1, 7
/* 12300 80021B00 23186800 */  subu       $v1, $v1, $t0
/* 12304 80021B04 18006300 */  mult       $v1, $v1
/* 12308 80021B08 1800C28C */  lw         $v0, 0x18($a2)
/* 1230C 80021B0C 12180000 */  mflo       $v1
/* 12310 80021B10 C0110200 */  sll        $v0, $v0, 7
/* 12314 80021B14 23104400 */  subu       $v0, $v0, $a0
/* 12318 80021B18 18004200 */  mult       $v0, $v0
/* 1231C 80021B1C 12100000 */  mflo       $v0
/* 12320 80021B20 21186200 */  addu       $v1, $v1, $v0
/* 12324 80021B24 2A18A300 */  slt        $v1, $a1, $v1
/* 12328 80021B28 07006014 */  bnez       $v1, .L80021B48
/* 1232C 80021B2C 00000000 */   nop
/* 12330 80021B30 2400C28C */  lw         $v0, 0x24($a2)
/* 12334 80021B34 00000000 */  nop
/* 12338 80021B38 04004014 */  bnez       $v0, .L80021B4C
/* 1233C 80021B3C 0100E724 */   addiu     $a3, $a3, 0x1
/* 12340 80021B40 0800E003 */  jr         $ra
/* 12344 80021B44 2110C000 */   addu      $v0, $a2, $zero
.L80021B48:
/* 12348 80021B48 0100E724 */  addiu      $a3, $a3, 0x1
.L80021B4C:
/* 1234C 80021B4C 2A10E900 */  slt        $v0, $a3, $t1
/* 12350 80021B50 E8FF4014 */  bnez       $v0, .L80021AF4
/* 12354 80021B54 3000C624 */   addiu     $a2, $a2, 0x30
.L80021B58:
/* 12358 80021B58 0800E003 */  jr         $ra
/* 1235C 80021B5C 21100000 */   addu      $v0, $zero, $zero
.size LookUpNearCrate, . - LookUpNearCrate

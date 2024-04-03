.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel initInputSystem
/* 49920 80059120 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 49924 80059124 21300000 */  addu       $a2, $zero, $zero
/* 49928 80059128 BC168A27 */  addiu      $t2, $gp, %gp_rel(gInputAxisValues)
/* 4992C 8005912C C0168927 */  addiu      $t1, $gp, %gp_rel(gInputAxisValues + 0x4)
/* 49930 80059130 AC168827 */  addiu      $t0, $gp, %gp_rel(gInputLastFrameAxisValues)
/* 49934 80059134 B0168727 */  addiu      $a3, $gp, %gp_rel(gInputLastFrameAxisValues + 0x4)
/* 49938 80059138 1000BFAF */  sw         $ra, 0x10($sp)
/* 4993C 8005913C CE1680A7 */  sh         $zero, %gp_rel(Trg1)($gp)
/* 49940 80059140 CC1680A7 */  sh         $zero, %gp_rel(Trg0)($gp)
/* 49944 80059144 D61680A7 */  sh         $zero, %gp_rel(LPad1)($gp)
/* 49948 80059148 D41680A7 */  sh         $zero, %gp_rel(LPad0)($gp)
.L8005914C:
/* 4994C 8005914C 2110CA00 */  addu       $v0, $a2, $t2
/* 49950 80059150 2118C900 */  addu       $v1, $a2, $t1
/* 49954 80059154 2120C800 */  addu       $a0, $a2, $t0
/* 49958 80059158 2128C700 */  addu       $a1, $a2, $a3
/* 4995C 8005915C 0100C624 */  addiu      $a2, $a2, 0x1
/* 49960 80059160 000040A0 */  sb         $zero, 0x0($v0)
/* 49964 80059164 0400C228 */  slti       $v0, $a2, 0x4
/* 49968 80059168 000060A0 */  sb         $zero, 0x0($v1)
/* 4996C 8005916C 000080A0 */  sb         $zero, 0x0($a0)
/* 49970 80059170 F6FF4014 */  bnez       $v0, .L8005914C
/* 49974 80059174 0000A0A0 */   sb        $zero, 0x0($a1)
/* 49978 80059178 21300000 */  addu       $a2, $zero, $zero
/* 4997C 8005917C 01000C24 */  addiu      $t4, $zero, 0x1
/* 49980 80059180 0B80023C */  lui        $v0, %hi(extCtrlInfoArray)
/* 49984 80059184 18B74924 */  addiu      $t1, $v0, %lo(extCtrlInfoArray)
/* 49988 80059188 02002B25 */  addiu      $t3, $t1, 0x2
/* 4998C 8005918C 08002A25 */  addiu      $t2, $t1, 0x8
/* 49990 80059190 0100C824 */  addiu      $t0, $a2, 0x1
.L80059194:
/* 49994 80059194 40100600 */  sll        $v0, $a2, 1
/* 49998 80059198 21384000 */  addu       $a3, $v0, $zero
/* 4999C 8005919C 01000524 */  addiu      $a1, $zero, 0x1
/* 499A0 800591A0 21104600 */  addu       $v0, $v0, $a2
/* 499A4 800591A4 C0100200 */  sll        $v0, $v0, 3
/* 499A8 800591A8 21184B00 */  addu       $v1, $v0, $t3
/* 499AC 800591AC 01006424 */  addiu      $a0, $v1, 0x1
/* 499B0 800591B0 21104900 */  addu       $v0, $v0, $t1
/* 499B4 800591B4 00190600 */  sll        $v1, $a2, 4
/* 499B8 800591B8 000043A0 */  sb         $v1, 0x0($v0)
/* 499BC 800591BC 010040A0 */  sb         $zero, 0x1($v0)
/* 499C0 800591C0 160040A0 */  sb         $zero, 0x16($v0)
/* 499C4 800591C4 17004CA0 */  sb         $t4, 0x17($v0)
.L800591C8:
/* 499C8 800591C8 000080A0 */  sb         $zero, 0x0($a0)
/* 499CC 800591CC FFFFA524 */  addiu      $a1, $a1, -0x1
/* 499D0 800591D0 FDFFA104 */  bgez       $a1, .L800591C8
/* 499D4 800591D4 FFFF8424 */   addiu     $a0, $a0, -0x1
/* 499D8 800591D8 01000524 */  addiu      $a1, $zero, 0x1
/* 499DC 800591DC 2110E600 */  addu       $v0, $a3, $a2
/* 499E0 800591E0 C0100200 */  sll        $v0, $v0, 3
/* 499E4 800591E4 21104A00 */  addu       $v0, $v0, $t2
/* 499E8 800591E8 04004224 */  addiu      $v0, $v0, 0x4
.L800591EC:
/* 499EC 800591EC 000040AC */  sw         $zero, 0x0($v0)
/* 499F0 800591F0 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 499F4 800591F4 FDFFA104 */  bgez       $a1, .L800591EC
/* 499F8 800591F8 FCFF4224 */   addiu     $v0, $v0, -0x4
/* 499FC 800591FC 21300001 */  addu       $a2, $t0, $zero
/* 49A00 80059200 0200C228 */  slti       $v0, $a2, 0x2
/* 49A04 80059204 E3FF4014 */  bnez       $v0, .L80059194
/* 49A08 80059208 0100C824 */   addiu     $t0, $a2, 0x1
/* 49A0C 8005920C 0B80043C */  lui        $a0, %hi(gPad)
/* 49A10 80059210 48B78424 */  addiu      $a0, $a0, %lo(gPad)
/* 49A14 80059214 AB0A020C */  jal        PadInitDirect
/* 49A18 80059218 40008524 */   addiu     $a1, $a0, 0x40
/* 49A1C 8005921C 1F0A020C */  jal        PadStartCom
/* 49A20 80059220 00000000 */   nop
/* 49A24 80059224 1000BF8F */  lw         $ra, 0x10($sp)
/* 49A28 80059228 C41680AF */  sw         $zero, %gp_rel(VCounter)($gp)
/* 49A2C 8005922C D81680AF */  sw         $zero, %gp_rel(oldVC)($gp)
/* 49A30 80059230 D01680AF */  sw         $zero, %gp_rel(gGameTick)($gp)
/* 49A34 80059234 0800E003 */  jr         $ra
/* 49A38 80059238 1800BD27 */   addiu     $sp, $sp, 0x18
.size initInputSystem, . - initInputSystem

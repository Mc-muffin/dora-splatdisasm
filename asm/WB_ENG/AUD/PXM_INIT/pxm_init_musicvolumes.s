.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_init_musicvolumes
/* 44AC8 800542C8 21200000 */  addu       $a0, $zero, $zero
/* 44ACC 800542CC 0A80023C */  lui        $v0, %hi(pxm_midichvolume)
/* 44AD0 800542D0 B87F4724 */  addiu      $a3, $v0, %lo(pxm_midichvolume)
/* 44AD4 800542D4 0B80033C */  lui        $v1, %hi(pxm_midichpan)
/* 44AD8 800542D8 88826624 */  addiu      $a2, $v1, %lo(pxm_midichpan)
/* 44ADC 800542DC 40000524 */  addiu      $a1, $zero, 0x40
/* 44AE0 800542E0 21108700 */  addu       $v0, $a0, $a3
.L800542E4:
/* 44AE4 800542E4 21188600 */  addu       $v1, $a0, $a2
/* 44AE8 800542E8 01008424 */  addiu      $a0, $a0, 0x1
/* 44AEC 800542EC 000040A0 */  sb         $zero, 0x0($v0)
/* 44AF0 800542F0 1000822C */  sltiu      $v0, $a0, 0x10
/* 44AF4 800542F4 000065A0 */  sb         $a1, 0x0($v1)
/* 44AF8 800542F8 FAFF4014 */  bnez       $v0, .L800542E4
/* 44AFC 800542FC 21108700 */   addu      $v0, $a0, $a3
/* 44B00 80054300 21200000 */  addu       $a0, $zero, $zero
/* 44B04 80054304 0A80023C */  lui        $v0, %hi(pxm_progch)
/* 44B08 80054308 A87F4324 */  addiu      $v1, $v0, %lo(pxm_progch)
/* 44B0C 8005430C 21108300 */  addu       $v0, $a0, $v1
.L80054310:
/* 44B10 80054310 000040A0 */  sb         $zero, 0x0($v0)
/* 44B14 80054314 01008424 */  addiu      $a0, $a0, 0x1
/* 44B18 80054318 1000822C */  sltiu      $v0, $a0, 0x10
/* 44B1C 8005431C FCFF4014 */  bnez       $v0, .L80054310
/* 44B20 80054320 21108300 */   addu      $v0, $a0, $v1
/* 44B24 80054324 0800E003 */  jr         $ra
/* 44B28 80054328 00000000 */   nop
.size pxm_init_musicvolumes, . - pxm_init_musicvolumes

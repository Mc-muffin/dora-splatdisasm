.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_setspumastervolume
/* 43060 80052860 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 43064 80052864 0B80033C */  lui        $v1, %hi(spucommonattr)
/* 43068 80052868 03000224 */  addiu      $v0, $zero, 0x3
/* 4306C 8005286C 00240400 */  sll        $a0, $a0, 16
/* 43070 80052870 03240400 */  sra        $a0, $a0, 16
/* 43074 80052874 688662AC */  sw         $v0, %lo(spucommonattr)($v1)
/* 43078 80052878 68866324 */  addiu      $v1, $v1, %lo(spucommonattr)
/* 4307C 8005287C 1000BFAF */  sw         $ra, 0x10($sp)
/* 43080 80052880 040064A4 */  sh         $a0, 0x4($v1)
/* 43084 80052884 060064A4 */  sh         $a0, 0x6($v1)
/* 43088 80052888 2708020C */  jal        SpuSetCommonAttr
/* 4308C 8005288C 21206000 */   addu      $a0, $v1, $zero
/* 43090 80052890 1000BF8F */  lw         $ra, 0x10($sp)
/* 43094 80052894 00000000 */  nop
/* 43098 80052898 0800E003 */  jr         $ra
/* 4309C 8005289C 1800BD27 */   addiu     $sp, $sp, 0x18
.size pxm_setspumastervolume, . - pxm_setspumastervolume

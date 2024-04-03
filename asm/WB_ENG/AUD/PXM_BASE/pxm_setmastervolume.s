.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_setmastervolume
/* 43004 80052804 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 43008 80052808 0B80033C */  lui        $v1, %hi(spucommonattr)
/* 4300C 8005280C C3020224 */  addiu      $v0, $zero, 0x2C3
/* 43010 80052810 688662AC */  sw         $v0, %lo(spucommonattr)($v1)
/* 43014 80052814 68866324 */  addiu      $v1, $v1, %lo(spucommonattr)
/* 43018 80052818 01000224 */  addiu      $v0, $zero, 0x1
/* 4301C 8005281C FF008430 */  andi       $a0, $a0, 0xFF
/* 43020 80052820 1000BFAF */  sw         $ra, 0x10($sp)
/* 43024 80052824 180062AC */  sw         $v0, 0x18($v1)
/* 43028 80052828 C0110400 */  sll        $v0, $a0, 7
/* 4302C 8005282C 21104400 */  addu       $v0, $v0, $a0
/* 43030 80052830 00140200 */  sll        $v0, $v0, 16
/* 43034 80052834 03140200 */  sra        $v0, $v0, 16
/* 43038 80052838 21206000 */  addu       $a0, $v1, $zero
/* 4303C 8005283C 120062A4 */  sh         $v0, 0x12($v1)
/* 43040 80052840 100062A4 */  sh         $v0, 0x10($v1)
/* 43044 80052844 040062A4 */  sh         $v0, 0x4($v1)
/* 43048 80052848 2708020C */  jal        SpuSetCommonAttr
/* 4304C 8005284C 060062A4 */   sh        $v0, 0x6($v1)
/* 43050 80052850 1000BF8F */  lw         $ra, 0x10($sp)
/* 43054 80052854 00000000 */  nop
/* 43058 80052858 0800E003 */  jr         $ra
/* 4305C 8005285C 1800BD27 */   addiu     $sp, $sp, 0x18
.size pxm_setmastervolume, . - pxm_setmastervolume

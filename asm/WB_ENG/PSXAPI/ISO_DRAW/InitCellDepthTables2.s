.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitCellDepthTables2
/* 57000 80066800 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 57004 80066804 1800B0AF */  sw         $s0, 0x18($sp)
/* 57008 80066808 21800000 */  addu       $s0, $zero, $zero
/* 5700C 8006680C 0880023C */  lui        $v0, %hi(TestWorld)
/* 57010 80066810 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 57014 80066814 8C655124 */  addiu      $s1, $v0, %lo(TestWorld)
/* 57018 80066818 2000BFAF */  sw         $ra, 0x20($sp)
/* 5701C 8006681C FF030232 */  andi       $v0, $s0, 0x3FF
.L80066820:
/* 57020 80066820 80100200 */  sll        $v0, $v0, 2
/* 57024 80066824 80010424 */  addiu      $a0, $zero, 0x180
/* 57028 80066828 1800238E */  lw         $v1, 0x18($s1)
/* 5702C 8006682C 21280000 */  addu       $a1, $zero, $zero
/* 57030 80066830 21104300 */  addu       $v0, $v0, $v1
/* 57034 80066834 0000478C */  lw         $a3, 0x0($v0)
/* 57038 80066838 80010624 */  addiu      $a2, $zero, 0x180
/* 5703C 8006683C 1000B0AF */  sw         $s0, 0x10($sp)
/* 57040 80066840 5E85010C */  jal        CreateCelDepth2
/* 57044 80066844 01001026 */   addiu     $s0, $s0, 0x1
/* 57048 80066848 F5FF001A */  blez       $s0, .L80066820
/* 5704C 8006684C FF030232 */   andi      $v0, $s0, 0x3FF
/* 57050 80066850 2000BF8F */  lw         $ra, 0x20($sp)
/* 57054 80066854 1C00B18F */  lw         $s1, 0x1C($sp)
/* 57058 80066858 1800B08F */  lw         $s0, 0x18($sp)
/* 5705C 8006685C 0800E003 */  jr         $ra
/* 57060 80066860 2800BD27 */   addiu     $sp, $sp, 0x28
.size InitCellDepthTables2, . - InitCellDepthTables2

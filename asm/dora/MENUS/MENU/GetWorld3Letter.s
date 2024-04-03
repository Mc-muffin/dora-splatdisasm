.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetWorld3Letter
/* 188E0 800280E0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 188E4 800280E4 0880033C */  lui        $v1, %hi(WorldList)
/* 188E8 800280E8 6C646324 */  addiu      $v1, $v1, %lo(WorldList)
/* 188EC 800280EC 2000B0AF */  sw         $s0, 0x20($sp)
/* 188F0 800280F0 0980103C */  lui        $s0, %hi(gworldchars)
/* 188F4 800280F4 4C561026 */  addiu      $s0, $s0, %lo(gworldchars)
/* 188F8 800280F8 8407848F */  lw         $a0, %gp_rel(gmenuworld)($gp)
/* 188FC 800280FC 03000624 */  addiu      $a2, $zero, 0x3
/* 18900 80028100 2400BFAF */  sw         $ra, 0x24($sp)
/* 18904 80028104 80100400 */  sll        $v0, $a0, 2
/* 18908 80028108 21104400 */  addu       $v0, $v0, $a0
/* 1890C 8002810C 80100200 */  sll        $v0, $v0, 2
/* 18910 80028110 21186200 */  addu       $v1, $v1, $v0
/* 18914 80028114 0C00658C */  lw         $a1, 0xC($v1)
/* 18918 80028118 D3C2010C */  jal        strncpy
/* 1891C 8002811C 21200002 */   addu      $a0, $s0, $zero
/* 18920 80028120 2400BF8F */  lw         $ra, 0x24($sp)
/* 18924 80028124 21100002 */  addu       $v0, $s0, $zero
/* 18928 80028128 030000A2 */  sb         $zero, 0x3($s0)
/* 1892C 8002812C 2000B08F */  lw         $s0, 0x20($sp)
/* 18930 80028130 0800E003 */  jr         $ra
/* 18934 80028134 2800BD27 */   addiu     $sp, $sp, 0x28
.size GetWorld3Letter, . - GetWorld3Letter

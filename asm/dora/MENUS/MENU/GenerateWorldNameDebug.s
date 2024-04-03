.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GenerateWorldNameDebug
/* 18804 80028004 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 18808 80028008 0880033C */  lui        $v1, %hi(WorldList)
/* 1880C 8002800C 8407858F */  lw         $a1, %gp_rel(gmenuworld)($gp)
/* 18810 80028010 0980073C */  lui        $a3, %hi(gLevel)
/* 18814 80028014 3456E78C */  lw         $a3, %lo(gLevel)($a3)
/* 18818 80028018 6C646324 */  addiu      $v1, $v1, %lo(WorldList)
/* 1881C 8002801C 2000BFAF */  sw         $ra, 0x20($sp)
/* 18820 80028020 80100500 */  sll        $v0, $a1, 2
/* 18824 80028024 21104500 */  addu       $v0, $v0, $a1
/* 18828 80028028 80100200 */  sll        $v0, $v0, 2
/* 1882C 8002802C 21186200 */  addu       $v1, $v1, $v0
/* 18830 80028030 0180053C */  lui        $a1, %hi(D_80011524)
/* 18834 80028034 2415A524 */  addiu      $a1, $a1, %lo(D_80011524)
/* 18838 80028038 0800668C */  lw         $a2, 0x8($v1)
/* 1883C 8002803C 53C5010C */  jal        sprintf
/* 18840 80028040 0100E724 */   addiu     $a3, $a3, 0x1
/* 18844 80028044 2000BF8F */  lw         $ra, 0x20($sp)
/* 18848 80028048 00000000 */  nop
/* 1884C 8002804C 0800E003 */  jr         $ra
/* 18850 80028050 2800BD27 */   addiu     $sp, $sp, 0x28
.size GenerateWorldNameDebug, . - GenerateWorldNameDebug

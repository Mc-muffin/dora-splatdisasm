.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_gen_noteID
/* 45820 80055020 FF008430 */  andi       $a0, $a0, 0xFF
/* 45824 80055024 FF00A530 */  andi       $a1, $a1, 0xFF
/* 45828 80055028 002A0500 */  sll        $a1, $a1, 8
/* 4582C 8005502C 25208500 */  or         $a0, $a0, $a1
/* 45830 80055030 FF00C630 */  andi       $a2, $a2, 0xFF
/* 45834 80055034 00340600 */  sll        $a2, $a2, 16
/* 45838 80055038 25208600 */  or         $a0, $a0, $a2
/* 4583C 8005503C 00160700 */  sll        $v0, $a3, 24
/* 45840 80055040 0800E003 */  jr         $ra
/* 45844 80055044 25108200 */   or        $v0, $a0, $v0
.size pxm_gen_noteID, . - pxm_gen_noteID

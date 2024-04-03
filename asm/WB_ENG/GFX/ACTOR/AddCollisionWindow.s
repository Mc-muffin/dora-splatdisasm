.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AddCollisionWindow
/* 52810 80062010 3C00888C */  lw         $t0, 0x3C($a0)
/* 52814 80062014 00320600 */  sll        $a2, $a2, 8
/* 52818 80062018 3400038D */  lw         $v1, 0x34($t0)
/* 5281C 8006201C 003A0700 */  sll        $a3, $a3, 8
/* 52820 80062020 40100300 */  sll        $v0, $v1, 1
/* 52824 80062024 21104300 */  addu       $v0, $v0, $v1
/* 52828 80062028 80100200 */  sll        $v0, $v0, 2
/* 5282C 8006202C 38004224 */  addiu      $v0, $v0, 0x38
/* 52830 80062030 21100201 */  addu       $v0, $t0, $v0
/* 52834 80062034 000045AC */  sw         $a1, 0x0($v0)
/* 52838 80062038 040046AC */  sw         $a2, 0x4($v0)
/* 5283C 8006203C 080047AC */  sw         $a3, 0x8($v0)
/* 52840 80062040 3400038D */  lw         $v1, 0x34($t0)
/* 52844 80062044 00000000 */  nop
/* 52848 80062048 01006324 */  addiu      $v1, $v1, 0x1
/* 5284C 8006204C 0800E003 */  jr         $ra
/* 52850 80062050 340003AD */   sw        $v1, 0x34($t0)
.size AddCollisionWindow, . - AddCollisionWindow

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel padpluggedin
/* 4A418 80059C18 0B80023C */  lui        $v0, %hi(gPad)
/* 4A41C 80059C1C 48B74224 */  addiu      $v0, $v0, %lo(gPad)
/* 4A420 80059C20 80210400 */  sll        $a0, $a0, 6
/* 4A424 80059C24 21208200 */  addu       $a0, $a0, $v0
/* 4A428 80059C28 00008290 */  lbu        $v0, 0x0($a0)
/* 4A42C 80059C2C 0800E003 */  jr         $ra
/* 4A430 80059C30 0100422C */   sltiu     $v0, $v0, 0x1
.size padpluggedin, . - padpluggedin

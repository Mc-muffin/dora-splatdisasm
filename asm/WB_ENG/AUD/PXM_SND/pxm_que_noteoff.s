.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_que_noteoff
/* 45784 80054F84 0800828C */  lw         $v0, 0x8($a0)
/* 45788 80054F88 00000000 */  nop
/* 4578C 80054F8C 40004234 */  ori        $v0, $v0, 0x40
/* 45790 80054F90 0800E003 */  jr         $ra
/* 45794 80054F94 080082AC */   sw        $v0, 0x8($a0)
.size pxm_que_noteoff, . - pxm_que_noteoff

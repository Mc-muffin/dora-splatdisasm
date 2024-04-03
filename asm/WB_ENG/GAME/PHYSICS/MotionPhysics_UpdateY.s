.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MotionPhysics_UpdateY
/* 2F614 8003EE14 3400828C */  lw         $v0, 0x34($a0)
/* 2F618 8003EE18 0800838C */  lw         $v1, 0x8($a0)
/* 2F61C 8003EE1C 03120200 */  sra        $v0, $v0, 8
/* 2F620 8003EE20 21186200 */  addu       $v1, $v1, $v0
/* 2F624 8003EE24 0800E003 */  jr         $ra
/* 2F628 8003EE28 080083AC */   sw        $v1, 0x8($a0)
.size MotionPhysics_UpdateY, . - MotionPhysics_UpdateY

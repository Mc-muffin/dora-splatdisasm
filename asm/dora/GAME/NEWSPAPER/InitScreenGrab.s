.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitScreenGrab
/* 15E48 80025648 01000224 */  addiu      $v0, $zero, 0x1
/* 15E4C 8002564C 0980013C */  lui        $at, %hi(SnapShot)
/* 15E50 80025650 7C5322AC */  sw         $v0, %lo(SnapShot)($at)
/* 15E54 80025654 0800E003 */  jr         $ra
/* 15E58 80025658 00000000 */   nop
.size InitScreenGrab, . - InitScreenGrab

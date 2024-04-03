.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_Endevent
/* 443F8 80053BF8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 443FC 80053BFC 1000BFAF */  sw         $ra, 0x10($sp)
/* 44400 80053C00 0980013C */  lui        $at, %hi(pxm_vo_playing)
/* 44404 80053C04 6C5220AC */  sw         $zero, %lo(pxm_vo_playing)($at)
/* 44408 80053C08 C168000C */  jal        ClearPlayerWait
/* 4440C 80053C0C 00000000 */   nop
/* 44410 80053C10 F40F828F */  lw         $v0, %gp_rel(g_endeventcallback)($gp)
/* 44414 80053C14 00000000 */  nop
/* 44418 80053C18 03004010 */  beqz       $v0, .L80053C28
/* 4441C 80053C1C 00000000 */   nop
/* 44420 80053C20 09F84000 */  jalr       $v0
/* 44424 80053C24 00000000 */   nop
.L80053C28:
/* 44428 80053C28 1000BF8F */  lw         $ra, 0x10($sp)
/* 4442C 80053C2C 00000000 */  nop
/* 44430 80053C30 0800E003 */  jr         $ra
/* 44434 80053C34 1800BD27 */   addiu     $sp, $sp, 0x18
.size pxm_Endevent, . - pxm_Endevent

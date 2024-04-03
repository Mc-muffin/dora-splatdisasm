.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RequestContinueScreen
/* 18384 80027B84 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18388 80027B88 01000224 */  addiu      $v0, $zero, 0x1
/* 1838C 80027B8C 0980013C */  lui        $at, %hi(CurrentTaskerState)
/* 18390 80027B90 D85122AC */  sw         $v0, %lo(CurrentTaskerState)($at)
/* 18394 80027B94 0980013C */  lui        $at, %hi(RequestTaskerState)
/* 18398 80027B98 DC5122AC */  sw         $v0, %lo(RequestTaskerState)($at)
/* 1839C 80027B9C 04000224 */  addiu      $v0, $zero, 0x4
/* 183A0 80027BA0 1000BFAF */  sw         $ra, 0x10($sp)
/* 183A4 80027BA4 480780AF */  sw         $zero, %gp_rel(MainMenuSelection)($gp)
/* 183A8 80027BA8 400780AF */  sw         $zero, %gp_rel(PreviousMainMenuState)($gp)
/* 183AC 80027BAC 440782AF */  sw         $v0, %gp_rel(MainMenuState)($gp)
/* 183B0 80027BB0 077A000C */  jal        HUDOff
/* 183B4 80027BB4 00000000 */   nop
/* 183B8 80027BB8 0980033C */  lui        $v1, %hi(ETActor + 0x58)
/* 183BC 80027BBC 00020224 */  addiu      $v0, $zero, 0x200
/* 183C0 80027BC0 A195010C */  jal        ResetDepthTable
/* 183C4 80027BC4 085B62AC */   sw        $v0, %lo(ETActor + 0x58)($v1)
/* 183C8 80027BC8 1000BF8F */  lw         $ra, 0x10($sp)
/* 183CC 80027BCC 0980013C */  lui        $at, %hi(PauseFlag)
/* 183D0 80027BD0 D84A20AC */  sw         $zero, %lo(PauseFlag)($at)
/* 183D4 80027BD4 0800E003 */  jr         $ra
/* 183D8 80027BD8 1800BD27 */   addiu     $sp, $sp, 0x18
.size RequestContinueScreen, . - RequestContinueScreen

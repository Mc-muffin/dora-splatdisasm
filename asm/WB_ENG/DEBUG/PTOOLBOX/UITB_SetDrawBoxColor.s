.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UITB_SetDrawBoxColor
/* 42DE8 800525E8 0980023C */  lui        $v0, %hi(gDBInsideColor)
/* 42DEC 800525EC 448244AC */  sw         $a0, %lo(gDBInsideColor)($v0)
/* 42DF0 800525F0 44824224 */  addiu      $v0, $v0, %lo(gDBInsideColor)
/* 42DF4 800525F4 040045AC */  sw         $a1, 0x4($v0)
/* 42DF8 800525F8 080046AC */  sw         $a2, 0x8($v0)
/* 42DFC 800525FC 1000A28F */  lw         $v0, 0x10($sp)
/* 42E00 80052600 1400A48F */  lw         $a0, 0x14($sp)
/* 42E04 80052604 0980033C */  lui        $v1, %hi(gDBBorderColor)
/* 42E08 80052608 508267AC */  sw         $a3, %lo(gDBBorderColor)($v1)
/* 42E0C 8005260C 50826324 */  addiu      $v1, $v1, %lo(gDBBorderColor)
/* 42E10 80052610 040062AC */  sw         $v0, 0x4($v1)
/* 42E14 80052614 0800E003 */  jr         $ra
/* 42E18 80052618 080064AC */   sw        $a0, 0x8($v1)
.size UITB_SetDrawBoxColor, . - UITB_SetDrawBoxColor

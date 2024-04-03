.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sys_StopVibration
/* 49D64 80059564 FF008630 */  andi       $a2, $a0, 0xFF
/* 49D68 80059568 01000224 */  addiu      $v0, $zero, 0x1
/* 49D6C 8005956C 2B104600 */  sltu       $v0, $v0, $a2
/* 49D70 80059570 02004014 */  bnez       $v0, .L8005957C
/* 49D74 80059574 01000224 */   addiu     $v0, $zero, 0x1
/* 49D78 80059578 2110C000 */  addu       $v0, $a2, $zero
.L8005957C:
/* 49D7C 8005957C 21304000 */  addu       $a2, $v0, $zero
/* 49D80 80059580 40100600 */  sll        $v0, $a2, 1
/* 49D84 80059584 21104600 */  addu       $v0, $v0, $a2
/* 49D88 80059588 C0100200 */  sll        $v0, $v0, 3
/* 49D8C 8005958C 0B80053C */  lui        $a1, %hi(extCtrlInfoArray)
/* 49D90 80059590 18B7A324 */  addiu      $v1, $a1, %lo(extCtrlInfoArray)
/* 49D94 80059594 21384300 */  addu       $a3, $v0, $v1
/* 49D98 80059598 1700E490 */  lbu        $a0, 0x17($a3)
/* 49D9C 8005959C 00000000 */  nop
/* 49DA0 800595A0 0D008010 */  beqz       $a0, .L800595D8
/* 49DA4 800595A4 40100600 */   sll       $v0, $a2, 1
/* 49DA8 800595A8 0980023C */  lui        $v0, %hi(gMenuRumbleFlag)
/* 49DAC 800595AC C449428C */  lw         $v0, %lo(gMenuRumbleFlag)($v0)
/* 49DB0 800595B0 00000000 */  nop
/* 49DB4 800595B4 07004010 */  beqz       $v0, .L800595D4
/* 49DB8 800595B8 FF000224 */   addiu     $v0, $zero, 0xFF
/* 49DBC 800595BC 0400E490 */  lbu        $a0, 0x4($a3)
/* 49DC0 800595C0 00000000 */  nop
/* 49DC4 800595C4 03008210 */  beq        $a0, $v0, .L800595D4
/* 49DC8 800595C8 2110E400 */   addu      $v0, $a3, $a0
/* 49DCC 800595CC 020040A0 */  sb         $zero, 0x2($v0)
/* 49DD0 800595D0 0800E0AC */  sw         $zero, 0x8($a3)
.L800595D4:
/* 49DD4 800595D4 40100600 */  sll        $v0, $a2, 1
.L800595D8:
/* 49DD8 800595D8 21104600 */  addu       $v0, $v0, $a2
/* 49DDC 800595DC C0100200 */  sll        $v0, $v0, 3
/* 49DE0 800595E0 18B7A324 */  addiu      $v1, $a1, %lo(extCtrlInfoArray)
/* 49DE4 800595E4 21284300 */  addu       $a1, $v0, $v1
/* 49DE8 800595E8 1700A490 */  lbu        $a0, 0x17($a1)
/* 49DEC 800595EC 00000000 */  nop
/* 49DF0 800595F0 12008010 */  beqz       $a0, .L8005963C
/* 49DF4 800595F4 21180000 */   addu      $v1, $zero, $zero
/* 49DF8 800595F8 0980023C */  lui        $v0, %hi(gMenuRumbleFlag)
/* 49DFC 800595FC C449428C */  lw         $v0, %lo(gMenuRumbleFlag)($v0)
/* 49E00 80059600 00000000 */  nop
/* 49E04 80059604 0D004010 */  beqz       $v0, .L8005963C
/* 49E08 80059608 FF000224 */   addiu     $v0, $zero, 0xFF
/* 49E0C 8005960C 0500A490 */  lbu        $a0, 0x5($a1)
/* 49E10 80059610 00000000 */  nop
/* 49E14 80059614 09008210 */  beq        $a0, $v0, .L8005963C
/* 49E18 80059618 00000000 */   nop
/* 49E1C 8005961C 05006010 */  beqz       $v1, .L80059634
/* 49E20 80059620 2110A400 */   addu      $v0, $a1, $a0
/* 49E24 80059624 D016838F */  lw         $v1, %gp_rel(gGameTick)($gp)
/* 49E28 80059628 020040A0 */  sb         $zero, 0x2($v0)
/* 49E2C 8005962C 0800E003 */  jr         $ra
/* 49E30 80059630 0C00A3AC */   sw        $v1, 0xC($a1)
.L80059634:
/* 49E34 80059634 020040A0 */  sb         $zero, 0x2($v0)
/* 49E38 80059638 0C00A0AC */  sw         $zero, 0xC($a1)
.L8005963C:
/* 49E3C 8005963C 0800E003 */  jr         $ra
/* 49E40 80059640 00000000 */   nop
.size Sys_StopVibration, . - Sys_StopVibration

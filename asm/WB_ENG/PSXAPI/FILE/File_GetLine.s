.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel File_GetLine
/* 47C80 80057480 1000A98F */  lw         $t1, 0x10($sp)
/* 47C84 80057484 00000000 */  nop
/* 47C88 80057488 2A10E900 */  slt        $v0, $a3, $t1
/* 47C8C 8005748C 03004014 */  bnez       $v0, .L8005749C
/* 47C90 80057490 21400000 */   addu      $t0, $zero, $zero
/* 47C94 80057494 0800E003 */  jr         $ra
/* 47C98 80057498 21100000 */   addu      $v0, $zero, $zero
.L8005749C:
/* 47C9C 8005749C 21108700 */  addu       $v0, $a0, $a3
/* 47CA0 800574A0 00004390 */  lbu        $v1, 0x0($v0)
/* 47CA4 800574A4 0100E724 */  addiu      $a3, $a3, 0x1
/* 47CA8 800574A8 0A000A24 */  addiu      $t2, $zero, 0xA
.L800574AC:
/* 47CAC 800574AC 10006A10 */  beq        $v1, $t2, .L800574F0
/* 47CB0 800574B0 2A100601 */   slt       $v0, $t0, $a2
/* 47CB4 800574B4 0E004010 */  beqz       $v0, .L800574F0
/* 47CB8 800574B8 2000622C */   sltiu     $v0, $v1, 0x20
/* 47CBC 800574BC 06004014 */  bnez       $v0, .L800574D8
/* 47CC0 800574C0 21108700 */   addu      $v0, $a0, $a3
/* 47CC4 800574C4 0000A3A0 */  sb         $v1, 0x0($a1)
/* 47CC8 800574C8 0100A524 */  addiu      $a1, $a1, 0x1
/* 47CCC 800574CC 01000225 */  addiu      $v0, $t0, 0x1
/* 47CD0 800574D0 FF004830 */  andi       $t0, $v0, 0xFF
/* 47CD4 800574D4 21108700 */  addu       $v0, $a0, $a3
.L800574D8:
/* 47CD8 800574D8 00004390 */  lbu        $v1, 0x0($v0)
/* 47CDC 800574DC 0100E724 */  addiu      $a3, $a3, 0x1
/* 47CE0 800574E0 2A10E900 */  slt        $v0, $a3, $t1
/* 47CE4 800574E4 F1FF4014 */  bnez       $v0, .L800574AC
/* 47CE8 800574E8 00000000 */   nop
/* 47CEC 800574EC 21380000 */  addu       $a3, $zero, $zero
.L800574F0:
/* 47CF0 800574F0 0000A0A0 */  sb         $zero, 0x0($a1)
/* 47CF4 800574F4 0800E003 */  jr         $ra
/* 47CF8 800574F8 2110E000 */   addu      $v0, $a3, $zero
.size File_GetLine, . - File_GetLine

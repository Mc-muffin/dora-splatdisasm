.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel patch_HWBP_handler
/* 48740 80057F40 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 48744 80057F44 1000BFAF */  sw         $ra, 0x10($sp)
/* 48748 80057F48 A7C7010C */  jal        SwEnterCriticalSection
/* 4874C 80057F4C 00000000 */   nop
/* 48750 80057F50 0780043C */  lui        $a0, %hi(HWBP_handler)
/* 48754 80057F54 24848424 */  addiu      $a0, $a0, %lo(HWBP_handler)
/* 48758 80057F58 021C0400 */  srl        $v1, $a0, 16
/* 4875C 80057F5C 1A3C023C */  lui        $v0, (0x3C1A0000 >> 16)
/* 48760 80057F60 25186200 */  or         $v1, $v1, $v0
/* 48764 80057F64 FFFF8430 */  andi       $a0, $a0, 0xFFFF
/* 48768 80057F68 400003AC */  sw         $v1, 0x40($zero)
/* 4876C 80057F6C 5A37033C */  lui        $v1, (0x375A0000 >> 16)
/* 48770 80057F70 25188300 */  or         $v1, $a0, $v1
/* 48774 80057F74 4003023C */  lui        $v0, (0x3400008 >> 16)
/* 48778 80057F78 08004234 */  ori        $v0, $v0, (0x3400008 & 0xFFFF)
/* 4877C 80057F7C 440003AC */  sw         $v1, 0x44($zero)
/* 48780 80057F80 480002AC */  sw         $v0, 0x48($zero)
/* 48784 80057F84 4C0000AC */  sw         $zero, 0x4C($zero)
/* 48788 80057F88 AFC7010C */  jal        SwExitCriticalSection
/* 4878C 80057F8C 00000000 */   nop
/* 48790 80057F90 1000BF8F */  lw         $ra, 0x10($sp)
/* 48794 80057F94 00000000 */  nop
/* 48798 80057F98 0800E003 */  jr         $ra
/* 4879C 80057F9C 1800BD27 */   addiu     $sp, $sp, 0x18
.size patch_HWBP_handler, . - patch_HWBP_handler

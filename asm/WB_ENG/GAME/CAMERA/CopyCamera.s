.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CopyCamera
/* 2B2A0 8003AAA0 0A80023C */  lui        $v0, %hi(copybuff)
/* 2B2A4 8003AAA4 88B14524 */  addiu      $a1, $v0, %lo(copybuff)
/* 2B2A8 8003AAA8 40100400 */  sll        $v0, $a0, 1
/* 2B2AC 8003AAAC 21104400 */  addu       $v0, $v0, $a0
/* 2B2B0 8003AAB0 80100200 */  sll        $v0, $v0, 2
/* 2B2B4 8003AAB4 23104400 */  subu       $v0, $v0, $a0
/* 2B2B8 8003AAB8 80100200 */  sll        $v0, $v0, 2
/* 2B2BC 8003AABC 0A80033C */  lui        $v1, %hi(SCGGameCam)
/* 2B2C0 8003AAC0 B8B16324 */  addiu      $v1, $v1, %lo(SCGGameCam)
/* 2B2C4 8003AAC4 21104300 */  addu       $v0, $v0, $v1
/* 2B2C8 8003AAC8 20004324 */  addiu      $v1, $v0, 0x20
.L8003AACC:
/* 2B2CC 8003AACC 0000448C */  lw         $a0, 0x0($v0)
/* 2B2D0 8003AAD0 0400468C */  lw         $a2, 0x4($v0)
/* 2B2D4 8003AAD4 0800478C */  lw         $a3, 0x8($v0)
/* 2B2D8 8003AAD8 0C00488C */  lw         $t0, 0xC($v0)
/* 2B2DC 8003AADC 0000A4AC */  sw         $a0, 0x0($a1)
/* 2B2E0 8003AAE0 0400A6AC */  sw         $a2, 0x4($a1)
/* 2B2E4 8003AAE4 0800A7AC */  sw         $a3, 0x8($a1)
/* 2B2E8 8003AAE8 0C00A8AC */  sw         $t0, 0xC($a1)
/* 2B2EC 8003AAEC 10004224 */  addiu      $v0, $v0, 0x10
/* 2B2F0 8003AAF0 F6FF4314 */  bne        $v0, $v1, .L8003AACC
/* 2B2F4 8003AAF4 1000A524 */   addiu     $a1, $a1, 0x10
/* 2B2F8 8003AAF8 0000438C */  lw         $v1, 0x0($v0)
/* 2B2FC 8003AAFC 0400448C */  lw         $a0, 0x4($v0)
/* 2B300 8003AB00 0800468C */  lw         $a2, 0x8($v0)
/* 2B304 8003AB04 0000A3AC */  sw         $v1, 0x0($a1)
/* 2B308 8003AB08 0400A4AC */  sw         $a0, 0x4($a1)
/* 2B30C 8003AB0C 0800E003 */  jr         $ra
/* 2B310 8003AB10 0800A6AC */   sw        $a2, 0x8($a1)
.size CopyCamera, . - CopyCamera

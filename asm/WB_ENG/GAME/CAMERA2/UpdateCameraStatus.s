.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UpdateCameraStatus
/* 2C224 8003BA24 9014848F */  lw         $a0, %gp_rel(currentCamera)($gp)
/* 2C228 8003BA28 00000000 */  nop
/* 2C22C 8003BA2C 4400838C */  lw         $v1, 0x44($a0)
/* 2C230 8003BA30 2C00828C */  lw         $v0, 0x2C($a0)
/* 2C234 8003BA34 00000000 */  nop
/* 2C238 8003BA38 1A006214 */  bne        $v1, $v0, .L8003BAA4
/* 2C23C 8003BA3C 00000000 */   nop
/* 2C240 8003BA40 4800838C */  lw         $v1, 0x48($a0)
/* 2C244 8003BA44 3000828C */  lw         $v0, 0x30($a0)
/* 2C248 8003BA48 00000000 */  nop
/* 2C24C 8003BA4C 15006214 */  bne        $v1, $v0, .L8003BAA4
/* 2C250 8003BA50 00000000 */   nop
/* 2C254 8003BA54 4C00838C */  lw         $v1, 0x4C($a0)
/* 2C258 8003BA58 3400828C */  lw         $v0, 0x34($a0)
/* 2C25C 8003BA5C 00000000 */  nop
/* 2C260 8003BA60 10006214 */  bne        $v1, $v0, .L8003BAA4
/* 2C264 8003BA64 00000000 */   nop
/* 2C268 8003BA68 5000838C */  lw         $v1, 0x50($a0)
/* 2C26C 8003BA6C 3800828C */  lw         $v0, 0x38($a0)
/* 2C270 8003BA70 00000000 */  nop
/* 2C274 8003BA74 0B006214 */  bne        $v1, $v0, .L8003BAA4
/* 2C278 8003BA78 00000000 */   nop
/* 2C27C 8003BA7C 5400838C */  lw         $v1, 0x54($a0)
/* 2C280 8003BA80 3C00828C */  lw         $v0, 0x3C($a0)
/* 2C284 8003BA84 00000000 */  nop
/* 2C288 8003BA88 06006214 */  bne        $v1, $v0, .L8003BAA4
/* 2C28C 8003BA8C 00000000 */   nop
/* 2C290 8003BA90 5800838C */  lw         $v1, 0x58($a0)
/* 2C294 8003BA94 4000828C */  lw         $v0, 0x40($a0)
/* 2C298 8003BA98 00000000 */  nop
/* 2C29C 8003BA9C 05006210 */  beq        $v1, $v0, .L8003BAB4
/* 2C2A0 8003BAA0 00000000 */   nop
.L8003BAA4:
/* 2C2A4 8003BAA4 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2C2A8 8003BAA8 01000224 */  addiu      $v0, $zero, 0x1
/* 2C2AC 8003BAAC AEEE0008 */  j          .L8003BAB8
/* 2C2B0 8003BAB0 980062A0 */   sb        $v0, 0x98($v1)
.L8003BAB4:
/* 2C2B4 8003BAB4 980080A0 */  sb         $zero, 0x98($a0)
.L8003BAB8:
/* 2C2B8 8003BAB8 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2C2BC 8003BABC 00000000 */  nop
/* 2C2C0 8003BAC0 2C00438C */  lw         $v1, 0x2C($v0)
/* 2C2C4 8003BAC4 3000448C */  lw         $a0, 0x30($v0)
/* 2C2C8 8003BAC8 3400458C */  lw         $a1, 0x34($v0)
/* 2C2CC 8003BACC 3800468C */  lw         $a2, 0x38($v0)
/* 2C2D0 8003BAD0 3C00478C */  lw         $a3, 0x3C($v0)
/* 2C2D4 8003BAD4 4000488C */  lw         $t0, 0x40($v0)
/* 2C2D8 8003BAD8 440043AC */  sw         $v1, 0x44($v0)
/* 2C2DC 8003BADC 480044AC */  sw         $a0, 0x48($v0)
/* 2C2E0 8003BAE0 4C0045AC */  sw         $a1, 0x4C($v0)
/* 2C2E4 8003BAE4 500046AC */  sw         $a2, 0x50($v0)
/* 2C2E8 8003BAE8 540047AC */  sw         $a3, 0x54($v0)
/* 2C2EC 8003BAEC 0800E003 */  jr         $ra
/* 2C2F0 8003BAF0 580048AC */   sw        $t0, 0x58($v0)
.size UpdateCameraStatus, . - UpdateCameraStatus

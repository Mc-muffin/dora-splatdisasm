.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GraphicsSetAutoClear
/* 4BD94 8005B594 FFFF8430 */  andi       $a0, $a0, 0xFFFF
/* 4BD98 8005B598 0B80023C */  lui        $v0, %hi(gDoubleBuffer)
/* 4BD9C 8005B59C 78B94224 */  addiu      $v0, $v0, %lo(gDoubleBuffer)
/* 4BDA0 8005B5A0 980044A0 */  sb         $a0, 0x98($v0)
/* 4BDA4 8005B5A4 0800E003 */  jr         $ra
/* 4BDA8 8005B5A8 180044A0 */   sb        $a0, 0x18($v0)
.size GraphicsSetAutoClear, . - GraphicsSetAutoClear

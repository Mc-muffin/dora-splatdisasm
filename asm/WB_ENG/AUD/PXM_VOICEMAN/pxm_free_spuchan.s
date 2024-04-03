.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_free_spuchan
/* 45D60 80055560 C0180400 */  sll        $v1, $a0, 3
/* 45D64 80055564 23186400 */  subu       $v1, $v1, $a0
/* 45D68 80055568 80180300 */  sll        $v1, $v1, 2
/* 45D6C 8005556C 0A80023C */  lui        $v0, %hi(pxm_chanstat)
/* 45D70 80055570 E87F4224 */  addiu      $v0, $v0, %lo(pxm_chanstat)
/* 45D74 80055574 21186200 */  addu       $v1, $v1, $v0
/* 45D78 80055578 01000224 */  addiu      $v0, $zero, 0x1
/* 45D7C 8005557C 04108200 */  sllv       $v0, $v0, $a0
/* 45D80 80055580 0C0060AC */  sw         $zero, 0xC($v1)
/* 45D84 80055584 040060AC */  sw         $zero, 0x4($v1)
/* 45D88 80055588 1810838F */  lw         $v1, %gp_rel(pxm_spu_chan_bits)($gp)
/* 45D8C 8005558C 27100200 */  nor        $v0, $zero, $v0
/* 45D90 80055590 24186200 */  and        $v1, $v1, $v0
/* 45D94 80055594 181083AF */  sw         $v1, %gp_rel(pxm_spu_chan_bits)($gp)
/* 45D98 80055598 0800E003 */  jr         $ra
/* 45D9C 8005559C 00000000 */   nop
.size pxm_free_spuchan, . - pxm_free_spuchan

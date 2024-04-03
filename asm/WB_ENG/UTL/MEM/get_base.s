.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel get_base
/* 40960 80050160 F0FF0624 */  addiu      $a2, $zero, -0x10
/* 40964 80050164 24308600 */  and        $a2, $a0, $a2
/* 40968 80050168 1000C324 */  addiu      $v1, $a2, 0x10
/* 4096C 8005016C F0FF8424 */  addiu      $a0, $a0, -0x10
/* 40970 80050170 2320C400 */  subu       $a0, $a2, $a0
/* 40974 80050174 2328A400 */  subu       $a1, $a1, $a0
/* 40978 80050178 82100500 */  srl        $v0, $a1, 2
/* 4097C 8005017C 80100200 */  sll        $v0, $v0, 2
/* 40980 80050180 AC1583AF */  sw         $v1, %gp_rel(s_endOfBSS)($gp)
/* 40984 80050184 21186200 */  addu       $v1, $v1, $v0
/* 40988 80050188 0100A534 */  ori        $a1, $a1, 0x1
/* 4098C 8005018C B01583AF */  sw         $v1, %gp_rel(s_endOfRAM)($gp)
/* 40990 80050190 0800E003 */  jr         $ra
/* 40994 80050194 1000C5AC */   sw        $a1, 0x10($a2)
.size get_base, . - get_base

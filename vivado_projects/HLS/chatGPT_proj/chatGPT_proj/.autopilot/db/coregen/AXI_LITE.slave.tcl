dict set slaves AXI_LITE {ports {a {type i_ap_memory width 32} b {type i_ap_memory width 32} result {type o_ap_memory width 32} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {a {width 32} b {width 32} result {width 32}} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode TOW

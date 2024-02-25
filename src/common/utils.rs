pub fn is_op_immediate(op: u16) -> bool {
    op & (1 << 15) == 0
}

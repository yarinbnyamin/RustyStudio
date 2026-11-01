(module $playground.wasm
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (result f32)))
  (type (;7;) (func))
  (type (;8;) (func (param i32 i32 i32)))
  (type (;9;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32 i32)))
  (table (;0;) 17 17 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (;0;) (mut i32) i32.const 1048576)
  (export "memory" (memory 0))
  (export "__rs_ball_color" (func $__rs_ball_color))
  (export "__rs_crash" (func $__rs_crash))
  (export "__rs_is_winner" (func $__rs_is_winner))
  (export "__rs_paddle_speed" (func $__rs_paddle_speed))
  (export "__rs_score_after_goal" (func $__rs_score_after_goal))
  (elem (;0;) (i32.const 1) func $"<&str as core[37ee0ce0c4cd57d5]::fmt::Display>::fmt" $"core[37ee0ce0c4cd57d5]::ptr::drop_glue::<alloc[42d2b33bd937efdb]::string::String>" $"<alloc[42d2b33bd937efdb]::string::String as core[37ee0ce0c4cd57d5]::fmt::Write>::write_str.81" $"<alloc[42d2b33bd937efdb]::string::String as core[37ee0ce0c4cd57d5]::fmt::Write>::write_char.82" $"<alloc[42d2b33bd937efdb]::string::String as core[37ee0ce0c4cd57d5]::fmt::Write>::write_fmt" $"<std[d775520e4a0009e6]::panicking::panic_handler::StaticStrPayload as core[37ee0ce0c4cd57d5]::fmt::Display>::fmt" $"<std[d775520e4a0009e6]::panicking::panic_handler::StaticStrPayload as core[37ee0ce0c4cd57d5]::panic::PanicPayload>::take_box" $"<std[d775520e4a0009e6]::panicking::panic_handler::StaticStrPayload as core[37ee0ce0c4cd57d5]::panic::PanicPayload>::get" $"<std[d775520e4a0009e6]::panicking::panic_handler::StaticStrPayload as core[37ee0ce0c4cd57d5]::panic::PanicPayload>::as_str" $"core[37ee0ce0c4cd57d5]::ptr::drop_glue::<std[d775520e4a0009e6]::panicking::panic_handler::FormatStringPayload>" $"<std[d775520e4a0009e6]::panicking::panic_handler::FormatStringPayload as core[37ee0ce0c4cd57d5]::fmt::Display>::fmt" $"<std[d775520e4a0009e6]::panicking::panic_handler::FormatStringPayload as core[37ee0ce0c4cd57d5]::panic::PanicPayload>::take_box" $"<std[d775520e4a0009e6]::panicking::panic_handler::FormatStringPayload as core[37ee0ce0c4cd57d5]::panic::PanicPayload>::get" $"<std[d775520e4a0009e6]::panicking::begin_panic::Payload<&str> as core[37ee0ce0c4cd57d5]::panic::PanicPayload>::as_str" $"<&str as core[37ee0ce0c4cd57d5]::any::Any>::type_id" $"<alloc[42d2b33bd937efdb]::string::String as core[37ee0ce0c4cd57d5]::any::Any>::type_id")
  (func $__rs_ball_color (;0;) (type 3) (result i32)
    i32.const 16746496
  )
  (func $__rs_crash (;1;) (type 4) (param i32) (result i32)
    block ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      i32.const 100
      local.get 0
      i32.div_s
      return
    end
    i32.const 1048808
    call $"core[37ee0ce0c4cd57d5]::panicking::panic_const::panic_const_div_by_zero"
    unreachable
  )
  (func $"core[37ee0ce0c4cd57d5]::panicking::panic_const::panic_const_div_by_zero" (;2;) (type 5) (param i32)
    i32.const 1048860
    i32.const 51
    local.get 0
    call $"core[37ee0ce0c4cd57d5]::panicking::panic_fmt"
    unreachable
  )
  (func $__rs_is_winner (;3;) (type 4) (param i32) (result i32)
    local.get 0
    i32.const 4
    i32.gt_s
  )
  (func $__rs_paddle_speed (;4;) (type 6) (result f32)
    f32.const 0x1.8p+2 (;=6;)
  )
  (func $__rs_score_after_goal (;5;) (type 4) (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add
  )
  (func $"alloc[42d2b33bd937efdb]::raw_vec::handle_error" (;6;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $"alloc[42d2b33bd937efdb]::alloc::handle_alloc_error"
      unreachable
    end
    call $"alloc[42d2b33bd937efdb]::raw_vec::capacity_overflow"
    unreachable
  )
  (func $"alloc[42d2b33bd937efdb]::alloc::handle_alloc_error" (;7;) (type 2) (param i32 i32)
    local.get 1
    local.get 0
    call $"__rustc[3d2f79520d6fa809]::__rust_alloc_error_handler"
    unreachable
  )
  (func $"alloc[42d2b33bd937efdb]::raw_vec::capacity_overflow" (;8;) (type 7)
    i32.const 1048824
    i32.const 35
    i32.const 1048844
    call $"core[37ee0ce0c4cd57d5]::panicking::panic_fmt"
    unreachable
  )
  (func $"__rustc[3d2f79520d6fa809]::__rust_alloc_error_handler" (;9;) (type 2) (param i32 i32)
    local.get 1
    local.get 0
    call $"std[d775520e4a0009e6]::alloc::rust_oom"
    unreachable
  )
  (func $"core[37ee0ce0c4cd57d5]::panicking::panic_fmt" (;10;) (type 8) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=16
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.const 1
    i32.store16 offset=28
    local.get 3
    local.get 2
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 12
    i32.add
    i32.store offset=20
    local.get 3
    i32.const 20
    i32.add
    call $"__rustc[3d2f79520d6fa809]::rust_begin_unwind"
    unreachable
  )
  (func $"<&str as core[37ee0ce0c4cd57d5]::fmt::Display>::fmt" (;11;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load
    local.set 3
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load offset=8
        local.tee 4
        i32.const 402653184
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block ;; label = @3
          block ;; label = @4
            local.get 4
            i32.const 268435456
            i32.and
            br_if 0 (;@4;)
            block ;; label = @5
              local.get 2
              i32.const 16
              i32.lt_u
              br_if 0 (;@5;)
              local.get 2
              local.get 3
              local.get 3
              i32.const 3
              i32.add
              i32.const -4
              i32.and
              local.tee 5
              i32.sub
              local.tee 6
              i32.add
              local.tee 7
              i32.const 3
              i32.and
              local.set 8
              i32.const 0
              local.set 9
              i32.const 0
              local.set 0
              block ;; label = @6
                local.get 3
                local.get 5
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                local.set 10
                i32.const 0
                local.set 0
                block ;; label = @7
                  local.get 6
                  i32.const -4
                  i32.gt_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 10
                  i32.const 0
                  local.set 0
                  loop ;; label = @8
                    local.get 0
                    local.get 3
                    local.get 10
                    i32.add
                    local.tee 11
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.get 11
                    i32.const 1
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.get 11
                    i32.const 2
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.get 11
                    i32.const 3
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.set 0
                    local.get 10
                    i32.const 4
                    i32.add
                    local.tee 10
                    br_if 0 (;@8;)
                  end
                end
                local.get 3
                local.get 10
                i32.add
                local.set 11
                loop ;; label = @7
                  local.get 0
                  local.get 11
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.set 0
                  local.get 11
                  i32.const 1
                  i32.add
                  local.set 11
                  local.get 6
                  i32.const 1
                  i32.add
                  local.tee 6
                  br_if 0 (;@7;)
                end
              end
              block ;; label = @6
                local.get 8
                i32.eqz
                br_if 0 (;@6;)
                local.get 5
                local.get 7
                i32.const 2147483644
                i32.and
                i32.add
                local.tee 11
                i32.load8_s
                i32.const -65
                i32.gt_s
                local.set 9
                local.get 8
                i32.const 1
                i32.eq
                br_if 0 (;@6;)
                local.get 9
                local.get 11
                i32.load8_s offset=1
                i32.const -65
                i32.gt_s
                i32.add
                local.set 9
                local.get 8
                i32.const 2
                i32.eq
                br_if 0 (;@6;)
                local.get 9
                local.get 11
                i32.load8_s offset=2
                i32.const -65
                i32.gt_s
                i32.add
                local.set 9
              end
              local.get 7
              i32.const 2
              i32.shr_u
              local.set 8
              local.get 9
              local.get 0
              i32.add
              local.set 10
              loop ;; label = @6
                local.get 5
                local.set 9
                local.get 8
                i32.eqz
                br_if 3 (;@3;)
                local.get 8
                i32.const 192
                local.get 8
                i32.const 192
                i32.lt_u
                select
                local.tee 7
                i32.const 3
                i32.and
                local.set 12
                block ;; label = @7
                  block ;; label = @8
                    local.get 7
                    i32.const 2
                    i32.shl
                    local.tee 13
                    i32.const 1008
                    i32.and
                    local.tee 0
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 11
                    br 1 (;@7;)
                  end
                  local.get 9
                  local.get 0
                  i32.add
                  local.set 6
                  i32.const 0
                  local.set 11
                  local.get 9
                  local.set 0
                  loop ;; label = @8
                    local.get 0
                    i32.const 12
                    i32.add
                    i32.load
                    local.tee 5
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 5
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    local.get 0
                    i32.const 8
                    i32.add
                    i32.load
                    local.tee 5
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 5
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    local.get 0
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 5
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 5
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    local.get 0
                    i32.load
                    local.tee 5
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 5
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    local.get 11
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    local.set 11
                    local.get 0
                    i32.const 16
                    i32.add
                    local.tee 0
                    local.get 6
                    i32.ne
                    br_if 0 (;@8;)
                  end
                end
                local.get 8
                local.get 7
                i32.sub
                local.set 8
                local.get 9
                local.get 13
                i32.add
                local.set 5
                local.get 11
                i32.const 8
                i32.shr_u
                i32.const 16711935
                i32.and
                local.get 11
                i32.const 16711935
                i32.and
                i32.add
                i32.const 65537
                i32.mul
                i32.const 16
                i32.shr_u
                local.get 10
                i32.add
                local.set 10
                local.get 12
                i32.eqz
                br_if 0 (;@6;)
              end
              local.get 9
              local.get 7
              i32.const 252
              i32.and
              i32.const 2
              i32.shl
              i32.add
              local.tee 11
              i32.load
              local.tee 0
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 0
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.set 0
              block ;; label = @6
                local.get 12
                i32.const 1
                i32.eq
                br_if 0 (;@6;)
                local.get 11
                i32.load offset=4
                local.tee 5
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 5
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 0
                i32.add
                local.set 0
                local.get 12
                i32.const 2
                i32.eq
                br_if 0 (;@6;)
                local.get 11
                i32.load offset=8
                local.tee 11
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 11
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 0
                i32.add
                local.set 0
              end
              local.get 0
              i32.const 8
              i32.shr_u
              i32.const 459007
              i32.and
              local.get 0
              i32.const 16711935
              i32.and
              i32.add
              i32.const 65537
              i32.mul
              i32.const 16
              i32.shr_u
              local.get 10
              i32.add
              local.set 10
              br 2 (;@3;)
            end
            block ;; label = @5
              local.get 2
              br_if 0 (;@5;)
              i32.const 0
              local.set 10
              br 2 (;@3;)
            end
            local.get 2
            i32.const 3
            i32.and
            local.set 11
            i32.const 0
            local.set 5
            i32.const 0
            local.set 10
            block ;; label = @5
              local.get 2
              i32.const 4
              i32.lt_u
              br_if 0 (;@5;)
              local.get 2
              i32.const 12
              i32.and
              local.set 6
              i32.const 0
              local.set 10
              i32.const 0
              local.set 5
              loop ;; label = @6
                local.get 10
                local.get 3
                local.get 5
                i32.add
                local.tee 0
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.get 0
                i32.const 1
                i32.add
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.get 0
                i32.const 2
                i32.add
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.get 0
                i32.const 3
                i32.add
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.set 10
                local.get 6
                local.get 5
                i32.const 4
                i32.add
                local.tee 5
                i32.ne
                br_if 0 (;@6;)
              end
              local.get 11
              i32.eqz
              br_if 2 (;@3;)
            end
            local.get 3
            local.get 5
            i32.add
            local.set 0
            loop ;; label = @5
              local.get 10
              local.get 0
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 10
              local.get 0
              i32.const 1
              i32.add
              local.set 0
              local.get 11
              i32.const -1
              i32.add
              local.tee 11
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 1
                i32.load16_u offset=14
                local.tee 10
                br_if 0 (;@6;)
                i32.const 0
                local.set 2
                br 1 (;@5;)
              end
              local.get 3
              local.get 2
              i32.add
              local.set 6
              i32.const 0
              local.set 2
              local.get 3
              local.set 11
              local.get 10
              local.set 5
              loop ;; label = @6
                local.get 11
                local.tee 0
                local.get 6
                i32.eq
                br_if 2 (;@4;)
                block ;; label = @7
                  block ;; label = @8
                    local.get 0
                    i32.load8_s
                    local.tee 11
                    i32.const -1
                    i32.le_s
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 1
                    i32.add
                    local.set 11
                    br 1 (;@7;)
                  end
                  block ;; label = @8
                    local.get 11
                    i32.const -32
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 2
                    i32.add
                    local.set 11
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.const 4
                  i32.const 3
                  local.get 11
                  i32.const -17
                  i32.gt_u
                  select
                  i32.add
                  local.set 11
                end
                local.get 11
                local.get 0
                i32.sub
                local.get 2
                i32.add
                local.set 2
                local.get 5
                i32.const -1
                i32.add
                local.tee 5
                br_if 0 (;@6;)
              end
            end
            i32.const 0
            local.set 5
          end
          local.get 10
          local.get 5
          i32.sub
          local.set 10
        end
        local.get 10
        local.get 1
        i32.load16_u offset=12
        local.tee 0
        i32.lt_u
        br_if 1 (;@1;)
      end
      local.get 1
      i32.load
      local.get 3
      local.get 2
      local.get 1
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 0)
      return
    end
    local.get 0
    local.get 10
    i32.sub
    local.set 9
    i32.const 0
    local.set 0
    i32.const 0
    local.set 8
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 4
          i32.const 29
          i32.shr_u
          i32.const 3
          i32.and
          br_table 2 (;@1;) 0 (;@3;) 1 (;@2;) 2 (;@1;) 2 (;@1;)
        end
        local.get 9
        local.set 8
        br 1 (;@1;)
      end
      local.get 9
      i32.const 65534
      i32.and
      i32.const 1
      i32.shr_u
      local.set 8
    end
    local.get 4
    i32.const 2097151
    i32.and
    local.set 10
    local.get 1
    i32.load offset=4
    local.set 11
    local.get 1
    i32.load
    local.set 5
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.const 65535
          i32.and
          local.get 8
          i32.const 65535
          i32.and
          i32.ge_u
          br_if 1 (;@2;)
          i32.const 1
          local.set 6
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 5
          local.get 10
          local.get 11
          i32.load offset=16
          call_indirect (type 1)
          i32.eqz
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 1
      local.set 6
      local.get 5
      local.get 3
      local.get 2
      local.get 11
      i32.load offset=12
      call_indirect (type 0)
      br_if 0 (;@1;)
      local.get 9
      local.get 8
      i32.sub
      i32.const 65535
      i32.and
      local.set 8
      i32.const 0
      local.set 0
      loop ;; label = @2
        block ;; label = @3
          local.get 0
          i32.const 65535
          i32.and
          local.get 8
          i32.lt_u
          br_if 0 (;@3;)
          i32.const 0
          return
        end
        i32.const 1
        local.set 6
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 5
        local.get 10
        local.get 11
        i32.load offset=16
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 6
  )
  (func $"__rustc[3d2f79520d6fa809]::rust_begin_unwind" (;12;) (type 5) (param i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i64.load align=4
    local.set 2
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    local.get 2
    i64.store offset=4 align=4
    local.get 1
    i32.const 4
    i32.add
    call $"std[d775520e4a0009e6]::sys::backtrace::__rust_end_short_backtrace::<std[d775520e4a0009e6]::panicking::panic_handler::{closure#0}, !>"
    unreachable
  )
  (func $"core[37ee0ce0c4cd57d5]::fmt::write" (;13;) (type 9) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 2
          i32.load8_u
          local.tee 5
          br_if 1 (;@2;)
          i32.const 0
          local.set 5
          br 2 (;@1;)
        end
        local.get 0
        local.get 2
        local.get 3
        i32.const 1
        i32.shr_u
        local.get 1
        i32.load offset=12
        call_indirect (type 0)
        local.set 5
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=12
      local.set 6
      i32.const 0
      local.set 7
      loop ;; label = @2
        local.get 2
        i32.const 1
        i32.add
        local.set 8
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 5
                  i32.extend8_s
                  i32.const -1
                  i32.gt_s
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 255
                  i32.and
                  local.tee 9
                  i32.const 128
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 9
                  i32.const 192
                  i32.ne
                  br_if 3 (;@4;)
                  local.get 4
                  local.get 1
                  i32.store offset=4
                  local.get 4
                  local.get 0
                  i32.store
                  local.get 4
                  i64.const 1610612768
                  i64.store offset=8 align=4
                  local.get 3
                  local.get 7
                  i32.const 3
                  i32.shl
                  i32.add
                  local.tee 5
                  i32.load
                  local.get 4
                  local.get 5
                  i32.load offset=4
                  call_indirect (type 1)
                  i32.eqz
                  br_if 2 (;@5;)
                  i32.const 1
                  local.set 5
                  br 6 (;@1;)
                end
                block ;; label = @7
                  local.get 0
                  local.get 8
                  local.get 5
                  i32.const 255
                  i32.and
                  local.tee 5
                  local.get 6
                  call_indirect (type 0)
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 5
                  i32.add
                  local.set 2
                  br 4 (;@3;)
                end
                i32.const 1
                local.set 5
                br 5 (;@1;)
              end
              block ;; label = @6
                local.get 0
                local.get 2
                i32.const 3
                i32.add
                local.tee 5
                local.get 2
                i32.load16_u offset=1 align=1
                local.tee 2
                local.get 6
                call_indirect (type 0)
                br_if 0 (;@6;)
                local.get 5
                local.get 2
                i32.add
                local.set 2
                br 3 (;@3;)
              end
              i32.const 1
              local.set 5
              br 4 (;@1;)
            end
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            local.get 8
            local.set 2
            br 1 (;@3;)
          end
          i32.const 1610612768
          local.set 10
          block ;; label = @4
            local.get 5
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 5
            i32.add
            local.set 8
            local.get 2
            i32.load offset=1 align=1
            local.set 10
          end
          i32.const 0
          local.set 9
          block ;; label = @4
            block ;; label = @5
              local.get 5
              i32.const 2
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.set 11
              local.get 8
              local.set 2
              br 1 (;@4;)
            end
            local.get 8
            i32.const 2
            i32.add
            local.set 2
            local.get 8
            i32.load16_u align=1
            local.set 11
          end
          block ;; label = @4
            block ;; label = @5
              local.get 5
              i32.const 4
              i32.and
              br_if 0 (;@5;)
              local.get 2
              local.set 8
              br 1 (;@4;)
            end
            local.get 2
            i32.const 2
            i32.add
            local.set 8
            local.get 2
            i32.load16_u align=1
            local.set 9
          end
          block ;; label = @4
            block ;; label = @5
              local.get 5
              i32.const 8
              i32.and
              br_if 0 (;@5;)
              local.get 8
              local.set 2
              br 1 (;@4;)
            end
            local.get 8
            i32.const 2
            i32.add
            local.set 2
            local.get 8
            i32.load16_u align=1
            local.set 7
          end
          block ;; label = @4
            local.get 5
            i32.const 16
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 11
            i32.const 65535
            i32.and
            i32.const 3
            i32.shl
            i32.add
            i32.load16_u offset=4
            local.set 11
          end
          block ;; label = @4
            local.get 5
            i32.const 32
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 9
            i32.const 65535
            i32.and
            i32.const 3
            i32.shl
            i32.add
            i32.load16_u offset=4
            local.set 9
          end
          local.get 4
          local.get 9
          i32.store16 offset=14
          local.get 4
          local.get 11
          i32.store16 offset=12
          local.get 4
          local.get 10
          i32.store offset=8
          local.get 4
          local.get 1
          i32.store offset=4
          local.get 4
          local.get 0
          i32.store
          block ;; label = @4
            local.get 3
            local.get 7
            i32.const 3
            i32.shl
            i32.add
            local.tee 5
            i32.load
            local.get 4
            local.get 5
            i32.load offset=4
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
            i32.const 1
            local.set 5
            br 3 (;@1;)
          end
          local.get 7
          i32.const 1
          i32.add
          local.set 7
        end
        local.get 2
        i32.load8_u
        local.tee 5
        br_if 0 (;@2;)
      end
      i32.const 0
      local.set 5
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5
  )
  (func $"core[37ee0ce0c4cd57d5]::panicking::panic" (;14;) (type 2) (param i32 i32)
    local.get 0
    i32.const 93
    local.get 1
    call $"core[37ee0ce0c4cd57d5]::panicking::panic_fmt"
    unreachable
  )
  (func $"core[37ee0ce0c4cd57d5]::option::expect_failed" (;15;) (type 7)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 28
    i32.store offset=4
    local.get 0
    i32.const 1049144
    i32.store
    local.get 0
    i32.const 1
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 0
    i64.extend_i32_u
    i64.or
    i64.store offset=8
    i32.const 1048576
    local.get 0
    i32.const 8
    i32.add
    i32.const 1049172
    call $"core[37ee0ce0c4cd57d5]::panicking::panic_fmt"
    unreachable
  )
  (func $"std[d775520e4a0009e6]::panicking::panic_with_hook" (;16;) (type 10) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    i32.const 0
    i32.const 0
    i32.load offset=1049696
    local.tee 5
    i32.const 1
    i32.add
    i32.store offset=1049696
    block ;; label = @1
      local.get 5
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      block ;; label = @2
        block ;; label = @3
          i32.const 0
          i32.load8_u offset=1049688
          br_if 0 (;@3;)
          i32.const 0
          i32.const 1
          i32.store8 offset=1049688
          i32.const 0
          i32.const 0
          i32.load offset=1049684
          i32.const 1
          i32.add
          i32.store offset=1049684
          i32.const 0
          i32.load offset=1049692
          local.tee 5
          i32.const -1
          i32.le_s
          br_if 2 (;@1;)
          local.get 5
          i32.const 1
          i32.add
          local.tee 1
          local.get 5
          i32.ge_s
          br_if 1 (;@2;)
          call $"core[37ee0ce0c4cd57d5]::option::expect_failed"
          unreachable
        end
        local.get 4
        i32.const 8
        i32.add
        local.get 0
        local.get 1
        i32.load offset=24
        call_indirect (type 2)
        br 1 (;@1;)
      end
      i32.const 0
      local.get 1
      i32.const -1
      i32.add
      i32.store offset=1049692
      i32.const 0
      i32.const 0
      i32.store8 offset=1049688
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      call $"__rustc[3d2f79520d6fa809]::rust_panic"
      unreachable
    end
    unreachable
  )
  (func $"__rustc[3d2f79520d6fa809]::rust_panic" (;17;) (type 7)
    unreachable
  )
  (func $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::malloc" (;18;) (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.const 245
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 1
            i32.const -48
            i32.const 0
            i32.load offset=1049672
            i32.sub
            i32.const -9
            i32.and
            i32.const -3
            i32.add
            local.get 0
            i32.le_u
            br_if 3 (;@1;)
            local.get 0
            i32.const 11
            i32.add
            local.tee 1
            i32.const -8
            i32.and
            local.set 2
            i32.const 0
            i32.load offset=1049632
            local.tee 3
            i32.eqz
            br_if 2 (;@2;)
            i32.const 31
            local.set 4
            local.get 0
            i32.const 16777205
            i32.ge_u
            br_if 1 (;@3;)
            local.get 2
            i32.const 38
            local.get 1
            i32.const 8
            i32.shr_u
            i32.clz
            local.tee 0
            i32.sub
            i32.shr_u
            i32.const 1
            i32.and
            local.get 0
            i32.const 1
            i32.shl
            i32.or
            i32.const 62
            i32.xor
            local.set 4
            br 1 (;@3;)
          end
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    block ;; label = @9
                      i32.const 0
                      i32.load offset=1049628
                      local.tee 5
                      i32.const 16
                      local.get 0
                      i32.const 11
                      i32.add
                      i32.const 504
                      i32.and
                      local.get 0
                      i32.const 11
                      i32.lt_u
                      select
                      local.tee 2
                      i32.const 3
                      i32.shr_u
                      local.tee 1
                      i32.shr_u
                      local.tee 0
                      i32.const 3
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const -1
                      i32.xor
                      i32.const 1
                      i32.and
                      local.get 1
                      i32.add
                      local.tee 6
                      i32.const 3
                      i32.shl
                      local.tee 0
                      i32.const 1049364
                      i32.add
                      local.tee 2
                      local.get 0
                      i32.const 1049372
                      i32.add
                      i32.load
                      local.tee 1
                      i32.load offset=8
                      local.tee 7
                      i32.eq
                      br_if 1 (;@8;)
                      local.get 7
                      local.get 2
                      i32.store offset=12
                      local.get 2
                      local.get 7
                      i32.store offset=8
                      br 2 (;@7;)
                    end
                    local.get 2
                    i32.const 0
                    i32.load offset=1049636
                    i32.le_u
                    br_if 6 (;@2;)
                    block ;; label = @9
                      local.get 0
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.load offset=1049632
                      local.tee 0
                      i32.eqz
                      br_if 7 (;@2;)
                      local.get 0
                      i32.ctz
                      i32.const 2
                      i32.shl
                      i32.const 1049220
                      i32.add
                      i32.load
                      local.tee 7
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      local.get 2
                      i32.sub
                      local.set 1
                      local.get 7
                      local.set 5
                      block ;; label = @10
                        loop ;; label = @11
                          block ;; label = @12
                            local.get 7
                            i32.load offset=16
                            local.tee 0
                            br_if 0 (;@12;)
                            local.get 7
                            i32.load offset=20
                            local.tee 0
                            i32.eqz
                            br_if 2 (;@10;)
                          end
                          local.get 0
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 2
                          i32.sub
                          local.tee 7
                          local.get 1
                          local.get 7
                          local.get 1
                          i32.lt_u
                          local.tee 7
                          select
                          local.set 1
                          local.get 0
                          local.get 5
                          local.get 7
                          select
                          local.set 5
                          local.get 0
                          local.set 7
                          br 0 (;@11;)
                        end
                      end
                      local.get 5
                      i32.load offset=24
                      local.set 4
                      block ;; label = @10
                        block ;; label = @11
                          block ;; label = @12
                            local.get 5
                            i32.load offset=12
                            local.tee 0
                            local.get 5
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 20
                            i32.const 16
                            local.get 5
                            i32.load offset=20
                            local.tee 0
                            select
                            i32.add
                            i32.load
                            local.tee 7
                            br_if 1 (;@11;)
                            i32.const 0
                            local.set 0
                            br 2 (;@10;)
                          end
                          local.get 5
                          i32.load offset=8
                          local.tee 7
                          local.get 0
                          i32.store offset=12
                          local.get 0
                          local.get 7
                          i32.store offset=8
                          br 1 (;@10;)
                        end
                        local.get 5
                        i32.const 20
                        i32.add
                        local.get 5
                        i32.const 16
                        i32.add
                        local.get 0
                        select
                        local.set 6
                        loop ;; label = @11
                          local.get 6
                          local.set 8
                          local.get 7
                          local.tee 0
                          i32.const 20
                          i32.add
                          local.get 0
                          i32.const 16
                          i32.add
                          local.get 0
                          i32.load offset=20
                          local.tee 7
                          select
                          local.set 6
                          local.get 0
                          i32.const 20
                          i32.const 16
                          local.get 7
                          select
                          i32.add
                          i32.load
                          local.tee 7
                          br_if 0 (;@11;)
                        end
                        local.get 8
                        i32.const 0
                        i32.store
                      end
                      local.get 4
                      i32.eqz
                      br_if 5 (;@4;)
                      block ;; label = @10
                        block ;; label = @11
                          local.get 5
                          local.get 5
                          i32.load offset=28
                          i32.const 2
                          i32.shl
                          i32.const 1049220
                          i32.add
                          local.tee 7
                          i32.load
                          i32.eq
                          br_if 0 (;@11;)
                          block ;; label = @12
                            local.get 4
                            i32.load offset=16
                            local.get 5
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 4
                            local.get 0
                            i32.store offset=20
                            local.get 0
                            br_if 2 (;@10;)
                            br 8 (;@4;)
                          end
                          local.get 4
                          local.get 0
                          i32.store offset=16
                          local.get 0
                          br_if 1 (;@10;)
                          br 7 (;@4;)
                        end
                        local.get 7
                        local.get 0
                        i32.store
                        local.get 0
                        i32.eqz
                        br_if 5 (;@5;)
                      end
                      local.get 0
                      local.get 4
                      i32.store offset=24
                      block ;; label = @10
                        local.get 5
                        i32.load offset=16
                        local.tee 7
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 7
                        i32.store offset=16
                        local.get 7
                        local.get 0
                        i32.store offset=24
                      end
                      local.get 5
                      i32.load offset=20
                      local.tee 7
                      i32.eqz
                      br_if 5 (;@4;)
                      local.get 0
                      local.get 7
                      i32.store offset=20
                      local.get 7
                      local.get 0
                      i32.store offset=24
                      br 5 (;@4;)
                    end
                    block ;; label = @9
                      block ;; label = @10
                        local.get 0
                        local.get 1
                        i32.shl
                        i32.const 2
                        local.get 1
                        i32.shl
                        local.tee 0
                        i32.const 0
                        local.get 0
                        i32.sub
                        i32.or
                        i32.and
                        i32.ctz
                        local.tee 8
                        i32.const 3
                        i32.shl
                        local.tee 1
                        i32.const 1049364
                        i32.add
                        local.tee 7
                        local.get 1
                        i32.const 1049372
                        i32.add
                        i32.load
                        local.tee 0
                        i32.load offset=8
                        local.tee 6
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 6
                        local.get 7
                        i32.store offset=12
                        local.get 7
                        local.get 6
                        i32.store offset=8
                        br 1 (;@9;)
                      end
                      i32.const 0
                      local.get 5
                      i32.const -2
                      local.get 8
                      i32.rotl
                      i32.and
                      i32.store offset=1049628
                    end
                    local.get 0
                    local.get 2
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 1
                    i32.add
                    local.get 1
                    local.get 2
                    i32.sub
                    local.tee 7
                    i32.store
                    local.get 0
                    local.get 2
                    i32.add
                    local.tee 5
                    local.get 7
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    i32.const 0
                    i32.load offset=1049636
                    local.tee 2
                    i32.eqz
                    br_if 2 (;@6;)
                    i32.const 0
                    i32.load offset=1049644
                    local.set 1
                    block ;; label = @9
                      block ;; label = @10
                        i32.const 0
                        i32.load offset=1049628
                        local.tee 6
                        i32.const 1
                        local.get 2
                        i32.const 3
                        i32.shr_u
                        i32.shl
                        local.tee 8
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 6
                        local.get 8
                        i32.or
                        i32.store offset=1049628
                        local.get 2
                        i32.const -8
                        i32.and
                        i32.const 1049364
                        i32.add
                        local.tee 2
                        local.set 6
                        br 1 (;@9;)
                      end
                      local.get 2
                      i32.const -8
                      i32.and
                      local.tee 2
                      i32.const 1049364
                      i32.add
                      local.set 6
                      local.get 2
                      i32.const 1049372
                      i32.add
                      i32.load
                      local.set 2
                    end
                    local.get 6
                    local.get 1
                    i32.store offset=8
                    local.get 2
                    local.get 1
                    i32.store offset=12
                    local.get 1
                    local.get 6
                    i32.store offset=12
                    local.get 1
                    local.get 2
                    i32.store offset=8
                    br 2 (;@6;)
                  end
                  i32.const 0
                  local.get 5
                  i32.const -2
                  local.get 6
                  i32.rotl
                  i32.and
                  i32.store offset=1049628
                end
                local.get 1
                local.get 0
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 1
                local.get 0
                i32.add
                local.tee 0
                local.get 0
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 1
                i32.const 8
                i32.add
                return
              end
              i32.const 0
              local.get 5
              i32.store offset=1049644
              i32.const 0
              local.get 7
              i32.store offset=1049636
              local.get 0
              i32.const 8
              i32.add
              return
            end
            i32.const 0
            i32.const 0
            i32.load offset=1049632
            i32.const -2
            local.get 5
            i32.load offset=28
            i32.rotl
            i32.and
            i32.store offset=1049632
          end
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 1
                i32.const 16
                i32.lt_u
                br_if 0 (;@6;)
                local.get 5
                local.get 2
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 5
                local.get 2
                i32.add
                local.tee 7
                local.get 1
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 7
                local.get 1
                i32.add
                local.get 1
                i32.store
                i32.const 0
                i32.load offset=1049636
                local.tee 6
                i32.eqz
                br_if 1 (;@5;)
                i32.const 0
                i32.load offset=1049644
                local.set 0
                block ;; label = @7
                  block ;; label = @8
                    i32.const 0
                    i32.load offset=1049628
                    local.tee 8
                    i32.const 1
                    local.get 6
                    i32.const 3
                    i32.shr_u
                    i32.shl
                    local.tee 4
                    i32.and
                    br_if 0 (;@8;)
                    i32.const 0
                    local.get 8
                    local.get 4
                    i32.or
                    i32.store offset=1049628
                    local.get 6
                    i32.const -8
                    i32.and
                    i32.const 1049364
                    i32.add
                    local.tee 6
                    local.set 8
                    br 1 (;@7;)
                  end
                  local.get 6
                  i32.const -8
                  i32.and
                  local.tee 6
                  i32.const 1049364
                  i32.add
                  local.set 8
                  local.get 6
                  i32.const 1049372
                  i32.add
                  i32.load
                  local.set 6
                end
                local.get 8
                local.get 0
                i32.store offset=8
                local.get 6
                local.get 0
                i32.store offset=12
                local.get 0
                local.get 8
                i32.store offset=12
                local.get 0
                local.get 6
                i32.store offset=8
                br 1 (;@5;)
              end
              local.get 5
              local.get 1
              local.get 2
              i32.add
              local.tee 0
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 5
              local.get 0
              i32.add
              local.tee 0
              local.get 0
              i32.load offset=4
              i32.const 1
              i32.or
              i32.store offset=4
              br 1 (;@4;)
            end
            i32.const 0
            local.get 7
            i32.store offset=1049644
            i32.const 0
            local.get 1
            i32.store offset=1049636
          end
          local.get 5
          i32.const 8
          i32.add
          local.tee 1
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        i32.const 0
        local.get 2
        i32.sub
        local.set 1
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 4
                i32.const 2
                i32.shl
                i32.const 1049220
                i32.add
                i32.load
                local.tee 5
                br_if 0 (;@6;)
                i32.const 0
                local.set 7
                i32.const 0
                local.set 0
                br 1 (;@5;)
              end
              i32.const 0
              local.set 7
              local.get 2
              i32.const 0
              i32.const 25
              local.get 4
              i32.const 1
              i32.shr_u
              i32.sub
              local.get 4
              i32.const 31
              i32.eq
              select
              i32.shl
              local.set 6
              i32.const 0
              local.set 0
              loop ;; label = @6
                block ;; label = @7
                  local.get 5
                  local.tee 5
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.tee 8
                  local.get 2
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 2
                  i32.sub
                  local.tee 8
                  local.get 1
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 5
                  local.set 7
                  local.get 8
                  local.set 1
                  local.get 8
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 1
                  local.get 5
                  local.set 0
                  local.get 5
                  local.set 7
                  br 3 (;@4;)
                end
                local.get 5
                i32.load offset=20
                local.tee 8
                local.get 0
                local.get 8
                local.get 5
                local.get 6
                i32.const 29
                i32.shr_u
                i32.const 4
                i32.and
                i32.add
                i32.load offset=16
                local.tee 5
                i32.ne
                select
                local.get 0
                local.get 8
                select
                local.set 0
                local.get 6
                i32.const 1
                i32.shl
                local.set 6
                local.get 5
                br_if 0 (;@6;)
              end
            end
            block ;; label = @5
              local.get 0
              local.get 7
              i32.or
              br_if 0 (;@5;)
              i32.const 0
              local.set 7
              i32.const 2
              local.get 4
              i32.shl
              local.tee 0
              i32.const 0
              local.get 0
              i32.sub
              i32.or
              local.get 3
              i32.and
              local.tee 0
              i32.eqz
              br_if 3 (;@2;)
              local.get 0
              i32.ctz
              i32.const 2
              i32.shl
              i32.const 1049220
              i32.add
              i32.load
              local.set 0
            end
            local.get 0
            i32.eqz
            br_if 1 (;@3;)
          end
          loop ;; label = @4
            local.get 0
            i32.load offset=4
            i32.const -8
            i32.and
            local.tee 6
            local.get 2
            i32.sub
            local.tee 5
            local.get 1
            local.get 5
            local.get 1
            i32.lt_u
            select
            local.set 8
            local.get 6
            local.get 2
            i32.lt_u
            local.set 6
            local.get 7
            local.get 0
            local.get 5
            local.get 1
            i32.ge_u
            select
            local.set 4
            block ;; label = @5
              local.get 0
              i32.load offset=16
              local.tee 5
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=20
              local.set 5
            end
            local.get 1
            local.get 8
            local.get 6
            select
            local.set 1
            local.get 7
            local.get 4
            local.get 6
            select
            local.set 7
            local.get 5
            local.set 0
            local.get 5
            br_if 0 (;@4;)
          end
        end
        local.get 7
        i32.eqz
        br_if 0 (;@2;)
        block ;; label = @3
          i32.const 0
          i32.load offset=1049636
          local.tee 0
          local.get 2
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          local.get 0
          local.get 2
          i32.sub
          i32.ge_u
          br_if 1 (;@2;)
        end
        local.get 7
        i32.load offset=24
        local.set 4
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 7
              i32.load offset=12
              local.tee 0
              local.get 7
              i32.ne
              br_if 0 (;@5;)
              local.get 7
              i32.const 20
              i32.const 16
              local.get 7
              i32.load offset=20
              local.tee 0
              select
              i32.add
              i32.load
              local.tee 5
              br_if 1 (;@4;)
              i32.const 0
              local.set 0
              br 2 (;@3;)
            end
            local.get 7
            i32.load offset=8
            local.tee 5
            local.get 0
            i32.store offset=12
            local.get 0
            local.get 5
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 7
          i32.const 20
          i32.add
          local.get 7
          i32.const 16
          i32.add
          local.get 0
          select
          local.set 6
          loop ;; label = @4
            local.get 6
            local.set 8
            local.get 5
            local.tee 0
            i32.const 20
            i32.add
            local.get 0
            i32.const 16
            i32.add
            local.get 0
            i32.load offset=20
            local.tee 5
            select
            local.set 6
            local.get 0
            i32.const 20
            i32.const 16
            local.get 5
            select
            i32.add
            i32.load
            local.tee 5
            br_if 0 (;@4;)
          end
          local.get 8
          i32.const 0
          i32.store
        end
        block ;; label = @3
          local.get 4
          i32.eqz
          br_if 0 (;@3;)
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 7
                local.get 7
                i32.load offset=28
                i32.const 2
                i32.shl
                i32.const 1049220
                i32.add
                local.tee 5
                i32.load
                i32.eq
                br_if 0 (;@6;)
                block ;; label = @7
                  local.get 4
                  i32.load offset=16
                  local.get 7
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 4
                  local.get 0
                  i32.store offset=20
                  local.get 0
                  br_if 2 (;@5;)
                  br 4 (;@3;)
                end
                local.get 4
                local.get 0
                i32.store offset=16
                local.get 0
                br_if 1 (;@5;)
                br 3 (;@3;)
              end
              local.get 5
              local.get 0
              i32.store
              local.get 0
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 0
            local.get 4
            i32.store offset=24
            block ;; label = @5
              local.get 7
              i32.load offset=16
              local.tee 5
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              local.get 5
              i32.store offset=16
              local.get 5
              local.get 0
              i32.store offset=24
            end
            local.get 7
            i32.load offset=20
            local.tee 5
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            local.get 5
            i32.store offset=20
            local.get 5
            local.get 0
            i32.store offset=24
            br 1 (;@3;)
          end
          i32.const 0
          i32.const 0
          i32.load offset=1049632
          i32.const -2
          local.get 7
          i32.load offset=28
          i32.rotl
          i32.and
          i32.store offset=1049632
        end
        block ;; label = @3
          block ;; label = @4
            local.get 1
            i32.const 16
            i32.lt_u
            br_if 0 (;@4;)
            local.get 7
            local.get 2
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 7
            local.get 2
            i32.add
            local.tee 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 1
            i32.add
            local.get 1
            i32.store
            block ;; label = @5
              local.get 1
              i32.const 256
              i32.lt_u
              br_if 0 (;@5;)
              local.get 0
              local.get 1
              call $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::insert_large_chunk"
              br 2 (;@3;)
            end
            block ;; label = @5
              block ;; label = @6
                i32.const 0
                i32.load offset=1049628
                local.tee 5
                i32.const 1
                local.get 1
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 6
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 5
                local.get 6
                i32.or
                i32.store offset=1049628
                local.get 1
                i32.const 248
                i32.and
                i32.const 1049364
                i32.add
                local.tee 1
                local.set 5
                br 1 (;@5;)
              end
              local.get 1
              i32.const 248
              i32.and
              local.tee 1
              i32.const 1049364
              i32.add
              local.set 5
              local.get 1
              i32.const 1049372
              i32.add
              i32.load
              local.set 1
            end
            local.get 5
            local.get 0
            i32.store offset=8
            local.get 1
            local.get 0
            i32.store offset=12
            local.get 0
            local.get 5
            i32.store offset=12
            local.get 0
            local.get 1
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 7
          local.get 1
          local.get 2
          i32.add
          local.tee 0
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 7
          local.get 0
          i32.add
          local.tee 0
          local.get 0
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
        end
        local.get 7
        i32.const 8
        i32.add
        local.tee 1
        br_if 1 (;@1;)
      end
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            i32.const 0
            i32.load offset=1049636
            local.tee 0
            local.get 2
            i32.ge_u
            br_if 0 (;@4;)
            block ;; label = @5
              i32.const 0
              i32.load offset=1049640
              local.tee 0
              local.get 2
              i32.gt_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 1
              local.get 2
              i32.const 0
              i32.load offset=1049672
              local.tee 0
              i32.add
              i32.const 47
              i32.add
              i32.const 0
              local.get 0
              i32.sub
              i32.and
              local.tee 0
              i32.eqz
              br_if 2 (;@3;)
              i32.const 0
              i32.load8_u offset=1049680
              local.set 7
              i32.const 0
              i32.const 1
              i32.store8 offset=1049680
              i32.const 1049712
              local.set 5
              i32.const 1114112
              i32.const 1049712
              i32.le_u
              br_if 2 (;@3;)
              local.get 0
              i32.const 1114112
              i32.const 1049712
              i32.sub
              i32.gt_u
              br_if 2 (;@3;)
              local.get 7
              i32.const 255
              i32.and
              br_if 2 (;@3;)
              i32.const 1114112
              i32.const 1049712
              i32.sub
              local.set 8
              br 3 (;@2;)
            end
            i32.const 0
            local.get 0
            local.get 2
            i32.sub
            local.tee 1
            i32.store offset=1049640
            i32.const 0
            i32.const 0
            i32.load offset=1049648
            local.tee 0
            local.get 2
            i32.add
            local.tee 7
            i32.store offset=1049648
            local.get 7
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 2
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 8
            i32.add
            local.set 1
            br 3 (;@1;)
          end
          i32.const 0
          i32.load offset=1049644
          local.set 1
          block ;; label = @4
            block ;; label = @5
              local.get 0
              local.get 2
              i32.sub
              local.tee 7
              i32.const 15
              i32.gt_u
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.store offset=1049644
              i32.const 0
              i32.const 0
              i32.store offset=1049636
              local.get 1
              local.get 0
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 1
              local.get 0
              i32.add
              local.tee 0
              local.get 0
              i32.load offset=4
              i32.const 1
              i32.or
              i32.store offset=4
              br 1 (;@4;)
            end
            i32.const 0
            local.get 7
            i32.store offset=1049636
            i32.const 0
            local.get 1
            local.get 2
            i32.add
            local.tee 5
            i32.store offset=1049644
            local.get 5
            local.get 7
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            local.get 0
            i32.add
            local.get 7
            i32.store
            local.get 1
            local.get 2
            i32.const 3
            i32.or
            i32.store offset=4
          end
          local.get 1
          i32.const 8
          i32.add
          return
        end
        local.get 0
        i32.const 16
        i32.shr_u
        local.get 0
        i32.const 65535
        i32.and
        i32.const 0
        i32.ne
        i32.add
        local.tee 7
        memory.grow
        local.tee 0
        i32.const -1
        i32.eq
        br_if 1 (;@1;)
        i32.const 0
        local.set 1
        local.get 0
        i32.const 16
        i32.shl
        local.tee 5
        i32.eqz
        br_if 1 (;@1;)
        local.get 7
        i32.const 16
        i32.shl
        local.tee 0
        i32.const -16
        i32.add
        local.get 0
        local.get 5
        i32.const 0
        local.get 0
        i32.sub
        i32.eq
        select
        local.set 8
      end
      i32.const 0
      i32.const 0
      i32.load offset=1049652
      local.get 8
      i32.add
      local.tee 0
      i32.store offset=1049652
      i32.const 0
      local.get 0
      i32.const 0
      i32.load offset=1049656
      local.tee 1
      local.get 0
      local.get 1
      i32.gt_u
      select
      i32.store offset=1049656
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    block ;; label = @9
                      block ;; label = @10
                        block ;; label = @11
                          i32.const 0
                          i32.load offset=1049648
                          local.tee 1
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 1049348
                          local.set 0
                          loop ;; label = @12
                            local.get 5
                            local.get 0
                            i32.load
                            local.tee 7
                            local.get 0
                            i32.load offset=4
                            local.tee 6
                            i32.add
                            i32.eq
                            br_if 2 (;@10;)
                            local.get 0
                            i32.load offset=8
                            local.tee 0
                            br_if 0 (;@12;)
                            br 3 (;@9;)
                          end
                        end
                        i32.const 0
                        i32.load offset=1049664
                        local.tee 0
                        i32.eqz
                        br_if 5 (;@5;)
                        local.get 5
                        local.get 0
                        i32.lt_u
                        br_if 5 (;@5;)
                        br 7 (;@3;)
                      end
                      local.get 1
                      local.get 5
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 7
                      local.get 1
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 0
                      i32.load offset=12
                      i32.eqz
                      br_if 1 (;@8;)
                    end
                    i32.const 0
                    i32.const 0
                    i32.load offset=1049664
                    local.tee 0
                    local.get 5
                    local.get 0
                    local.get 5
                    i32.lt_u
                    select
                    i32.store offset=1049664
                    local.get 5
                    local.get 8
                    i32.add
                    local.set 7
                    i32.const 1049348
                    local.set 0
                    block ;; label = @9
                      block ;; label = @10
                        block ;; label = @11
                          block ;; label = @12
                            loop ;; label = @13
                              local.get 0
                              i32.load
                              local.tee 6
                              local.get 7
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 0
                              i32.load offset=8
                              local.tee 0
                              br_if 0 (;@13;)
                              br 2 (;@11;)
                            end
                          end
                          local.get 0
                          i32.load offset=12
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        i32.const 1049348
                        local.set 0
                        loop ;; label = @11
                          block ;; label = @12
                            local.get 0
                            i32.load
                            local.tee 7
                            local.get 1
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 1
                            local.get 7
                            local.get 0
                            i32.load offset=4
                            i32.add
                            local.tee 7
                            i32.lt_u
                            br_if 3 (;@9;)
                          end
                          local.get 0
                          i32.load offset=8
                          local.set 0
                          br 0 (;@11;)
                        end
                      end
                      local.get 0
                      local.get 5
                      i32.store
                      local.get 0
                      local.get 0
                      i32.load offset=4
                      local.get 8
                      i32.add
                      i32.store offset=4
                      local.get 5
                      i32.const 15
                      i32.add
                      i32.const -8
                      i32.and
                      i32.const -8
                      i32.add
                      local.tee 5
                      local.get 2
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 6
                      i32.const 15
                      i32.add
                      i32.const -8
                      i32.and
                      i32.const -8
                      i32.add
                      local.tee 7
                      local.get 5
                      local.get 2
                      i32.add
                      local.tee 0
                      i32.sub
                      local.set 1
                      local.get 7
                      i32.const 0
                      i32.load offset=1049648
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 7
                      i32.const 0
                      i32.load offset=1049644
                      i32.eq
                      br_if 3 (;@6;)
                      block ;; label = @10
                        local.get 7
                        i32.load offset=4
                        local.tee 2
                        i32.const 3
                        i32.and
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 7
                        local.get 2
                        i32.const -8
                        i32.and
                        local.tee 2
                        call $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::unlink_chunk"
                        local.get 2
                        local.get 1
                        i32.add
                        local.set 1
                        local.get 7
                        local.get 2
                        i32.add
                        local.tee 7
                        i32.load offset=4
                        local.set 2
                      end
                      local.get 7
                      local.get 2
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 0
                      local.get 1
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 1
                      i32.add
                      local.get 1
                      i32.store
                      block ;; label = @10
                        local.get 1
                        i32.const 256
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 1
                        call $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::insert_large_chunk"
                        br 6 (;@4;)
                      end
                      block ;; label = @10
                        block ;; label = @11
                          i32.const 0
                          i32.load offset=1049628
                          local.tee 2
                          i32.const 1
                          local.get 1
                          i32.const 3
                          i32.shr_u
                          i32.shl
                          local.tee 7
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 2
                          local.get 7
                          i32.or
                          i32.store offset=1049628
                          local.get 1
                          i32.const 248
                          i32.and
                          i32.const 1049364
                          i32.add
                          local.tee 1
                          local.set 2
                          br 1 (;@10;)
                        end
                        local.get 1
                        i32.const 248
                        i32.and
                        local.tee 1
                        i32.const 1049364
                        i32.add
                        local.set 2
                        local.get 1
                        i32.const 1049372
                        i32.add
                        i32.load
                        local.set 1
                      end
                      local.get 2
                      local.get 0
                      i32.store offset=8
                      local.get 1
                      local.get 0
                      i32.store offset=12
                      local.get 0
                      local.get 2
                      i32.store offset=12
                      local.get 0
                      local.get 1
                      i32.store offset=8
                      br 5 (;@4;)
                    end
                    i32.const 0
                    local.get 5
                    i32.const 15
                    i32.add
                    i32.const -8
                    i32.and
                    local.tee 0
                    i32.const -8
                    i32.add
                    local.tee 6
                    i32.store offset=1049648
                    i32.const 0
                    local.get 5
                    local.get 0
                    i32.sub
                    local.get 8
                    i32.const -40
                    i32.add
                    local.tee 0
                    i32.add
                    i32.const 8
                    i32.add
                    local.tee 4
                    i32.store offset=1049640
                    local.get 6
                    local.get 4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 5
                    local.get 0
                    i32.add
                    i32.const 40
                    i32.store offset=4
                    i32.const 0
                    i32.const 2097152
                    i32.store offset=1049660
                    local.get 1
                    local.get 7
                    i32.const -32
                    i32.add
                    i32.const -8
                    i32.and
                    i32.const -8
                    i32.add
                    local.tee 0
                    local.get 0
                    local.get 1
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    local.tee 6
                    i32.const 27
                    i32.store offset=4
                    i32.const 0
                    i64.load offset=1049348 align=4
                    local.set 9
                    local.get 6
                    i32.const 16
                    i32.add
                    i32.const 0
                    i64.load offset=1049356 align=4
                    i64.store align=4
                    local.get 6
                    i32.const 8
                    i32.add
                    local.tee 0
                    local.get 9
                    i64.store align=4
                    i32.const 0
                    local.get 8
                    i32.store offset=1049352
                    i32.const 0
                    local.get 5
                    i32.store offset=1049348
                    i32.const 0
                    local.get 0
                    i32.store offset=1049356
                    i32.const 0
                    i32.const 0
                    i32.store offset=1049360
                    local.get 6
                    i32.const 28
                    i32.add
                    local.set 0
                    loop ;; label = @9
                      local.get 0
                      i32.const 7
                      i32.store
                      local.get 0
                      i32.const 4
                      i32.add
                      local.tee 0
                      local.get 7
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    local.get 6
                    local.get 1
                    i32.eq
                    br_if 6 (;@2;)
                    local.get 6
                    local.get 6
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 1
                    local.get 6
                    local.get 1
                    i32.sub
                    local.tee 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 6
                    local.get 0
                    i32.store
                    block ;; label = @9
                      local.get 0
                      i32.const 256
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 1
                      local.get 0
                      call $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::insert_large_chunk"
                      br 7 (;@2;)
                    end
                    block ;; label = @9
                      block ;; label = @10
                        i32.const 0
                        i32.load offset=1049628
                        local.tee 7
                        i32.const 1
                        local.get 0
                        i32.const 3
                        i32.shr_u
                        i32.shl
                        local.tee 5
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 7
                        local.get 5
                        i32.or
                        i32.store offset=1049628
                        local.get 0
                        i32.const 248
                        i32.and
                        i32.const 1049364
                        i32.add
                        local.tee 0
                        local.set 7
                        br 1 (;@9;)
                      end
                      local.get 0
                      i32.const 248
                      i32.and
                      local.tee 0
                      i32.const 1049364
                      i32.add
                      local.set 7
                      local.get 0
                      i32.const 1049372
                      i32.add
                      i32.load
                      local.set 0
                    end
                    local.get 7
                    local.get 1
                    i32.store offset=8
                    local.get 0
                    local.get 1
                    i32.store offset=12
                    local.get 1
                    local.get 7
                    i32.store offset=12
                    local.get 1
                    local.get 0
                    i32.store offset=8
                    br 6 (;@2;)
                  end
                  local.get 0
                  local.get 6
                  local.get 8
                  i32.add
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=1049648
                  local.tee 0
                  i32.const 15
                  i32.add
                  i32.const -8
                  i32.and
                  local.tee 1
                  i32.const -8
                  i32.add
                  local.tee 7
                  i32.store offset=1049648
                  i32.const 0
                  local.get 0
                  local.get 1
                  i32.sub
                  i32.const 0
                  i32.load offset=1049640
                  local.get 8
                  i32.add
                  local.tee 1
                  i32.add
                  i32.const 8
                  i32.add
                  local.tee 5
                  i32.store offset=1049640
                  local.get 7
                  local.get 5
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 1
                  i32.add
                  i32.const 40
                  i32.store offset=4
                  i32.const 0
                  i32.const 2097152
                  i32.store offset=1049660
                  br 5 (;@2;)
                end
                i32.const 0
                local.get 0
                i32.store offset=1049648
                i32.const 0
                i32.const 0
                i32.load offset=1049640
                local.get 1
                i32.add
                local.tee 1
                i32.store offset=1049640
                local.get 0
                local.get 1
                i32.const 1
                i32.or
                i32.store offset=4
                br 2 (;@4;)
              end
              i32.const 0
              local.get 0
              i32.store offset=1049644
              i32.const 0
              i32.const 0
              i32.load offset=1049636
              local.get 1
              i32.add
              local.tee 1
              i32.store offset=1049636
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              local.get 1
              i32.store
              br 1 (;@4;)
            end
            i32.const 0
            local.get 5
            i32.store offset=1049664
            br 1 (;@3;)
          end
          local.get 5
          i32.const 8
          i32.add
          return
        end
        i32.const 0
        local.get 8
        i32.store offset=1049352
        i32.const 0
        local.get 5
        i32.store offset=1049348
        i32.const 0
        i32.const 1049364
        i32.store offset=1049376
        i32.const 0
        i32.const 1049372
        i32.store offset=1049384
        i32.const 0
        i32.const 1049364
        i32.store offset=1049372
        i32.const 0
        i32.const 1049380
        i32.store offset=1049392
        i32.const 0
        i32.const 1049372
        i32.store offset=1049380
        i32.const 0
        i32.const 1049388
        i32.store offset=1049400
        i32.const 0
        i32.const 1049380
        i32.store offset=1049388
        i32.const 0
        i32.const 1049396
        i32.store offset=1049408
        i32.const 0
        i32.const 1049388
        i32.store offset=1049396
        i32.const 0
        i32.const 1049404
        i32.store offset=1049416
        i32.const 0
        i32.const 1049396
        i32.store offset=1049404
        i32.const 0
        i32.const 1049412
        i32.store offset=1049424
        i32.const 0
        i32.const 1049404
        i32.store offset=1049412
        i32.const 0
        i32.const 1049420
        i32.store offset=1049432
        i32.const 0
        i32.const 1049412
        i32.store offset=1049420
        i32.const 0
        i32.const 0
        i32.load offset=1049676
        local.tee 0
        i32.const -1
        local.get 0
        select
        i32.store offset=1049668
        i32.const 0
        i32.const 0
        i32.store offset=1049360
        i32.const 0
        i32.const 1049428
        i32.store offset=1049440
        i32.const 0
        i32.const 1049420
        i32.store offset=1049428
        i32.const 0
        i32.const 1049428
        i32.store offset=1049436
        i32.const 0
        i32.const 1049436
        i32.store offset=1049448
        i32.const 0
        i32.const 1049436
        i32.store offset=1049444
        i32.const 0
        i32.const 1049444
        i32.store offset=1049456
        i32.const 0
        i32.const 1049444
        i32.store offset=1049452
        i32.const 0
        i32.const 1049452
        i32.store offset=1049464
        i32.const 0
        i32.const 1049452
        i32.store offset=1049460
        i32.const 0
        i32.const 1049460
        i32.store offset=1049472
        i32.const 0
        i32.const 1049460
        i32.store offset=1049468
        i32.const 0
        i32.const 1049468
        i32.store offset=1049480
        i32.const 0
        i32.const 1049468
        i32.store offset=1049476
        i32.const 0
        i32.const 1049476
        i32.store offset=1049488
        i32.const 0
        i32.const 1049484
        i32.store offset=1049496
        i32.const 0
        i32.const 1049476
        i32.store offset=1049484
        i32.const 0
        i32.const 1049484
        i32.store offset=1049492
        i32.const 0
        i32.const 1049492
        i32.store offset=1049504
        i32.const 0
        i32.const 1049500
        i32.store offset=1049512
        i32.const 0
        i32.const 1049492
        i32.store offset=1049500
        i32.const 0
        i32.const 1049500
        i32.store offset=1049508
        i32.const 0
        i32.const 1049508
        i32.store offset=1049520
        i32.const 0
        i32.const 1049508
        i32.store offset=1049516
        i32.const 0
        i32.const 1049516
        i32.store offset=1049528
        i32.const 0
        i32.const 1049516
        i32.store offset=1049524
        i32.const 0
        i32.const 1049524
        i32.store offset=1049536
        i32.const 0
        i32.const 1049524
        i32.store offset=1049532
        i32.const 0
        i32.const 1049532
        i32.store offset=1049544
        i32.const 0
        i32.const 1049532
        i32.store offset=1049540
        i32.const 0
        i32.const 1049540
        i32.store offset=1049552
        i32.const 0
        i32.const 1049540
        i32.store offset=1049548
        i32.const 0
        i32.const 1049548
        i32.store offset=1049560
        i32.const 0
        i32.const 1049548
        i32.store offset=1049556
        i32.const 0
        i32.const 1049556
        i32.store offset=1049568
        i32.const 0
        i32.const 1049556
        i32.store offset=1049564
        i32.const 0
        i32.const 1049564
        i32.store offset=1049576
        i32.const 0
        i32.const 1049572
        i32.store offset=1049584
        i32.const 0
        i32.const 1049564
        i32.store offset=1049572
        i32.const 0
        i32.const 1049580
        i32.store offset=1049592
        i32.const 0
        i32.const 1049572
        i32.store offset=1049580
        i32.const 0
        i32.const 1049588
        i32.store offset=1049600
        i32.const 0
        i32.const 1049580
        i32.store offset=1049588
        i32.const 0
        i32.const 1049596
        i32.store offset=1049608
        i32.const 0
        i32.const 1049588
        i32.store offset=1049596
        i32.const 0
        i32.const 1049604
        i32.store offset=1049616
        i32.const 0
        i32.const 1049596
        i32.store offset=1049604
        i32.const 0
        i32.const 1049612
        i32.store offset=1049624
        i32.const 0
        i32.const 1049604
        i32.store offset=1049612
        i32.const 0
        local.get 5
        i32.const 15
        i32.add
        i32.const -8
        i32.and
        local.tee 0
        i32.const -8
        i32.add
        local.tee 1
        i32.store offset=1049648
        i32.const 0
        i32.const 1049612
        i32.store offset=1049620
        i32.const 0
        local.get 5
        local.get 0
        i32.sub
        local.get 8
        i32.const -40
        i32.add
        local.tee 0
        i32.add
        i32.const 8
        i32.add
        local.tee 7
        i32.store offset=1049640
        local.get 1
        local.get 7
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 5
        local.get 0
        i32.add
        i32.const 40
        i32.store offset=4
        i32.const 0
        i32.const 2097152
        i32.store offset=1049660
      end
      i32.const 0
      local.set 1
      i32.const 0
      i32.load offset=1049640
      local.tee 0
      local.get 2
      i32.le_u
      br_if 0 (;@1;)
      i32.const 0
      local.get 0
      local.get 2
      i32.sub
      local.tee 1
      i32.store offset=1049640
      i32.const 0
      i32.const 0
      i32.load offset=1049648
      local.tee 0
      local.get 2
      i32.add
      local.tee 7
      i32.store offset=1049648
      local.get 7
      local.get 1
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 2
      i32.const 3
      i32.or
      i32.store offset=4
      local.get 0
      i32.const 8
      i32.add
      return
    end
    local.get 1
  )
  (func $"<std[d775520e4a0009e6]::panicking::begin_panic::Payload<&str> as core[37ee0ce0c4cd57d5]::panic::PanicPayload>::as_str" (;19;) (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store
  )
  (func $"<&str as core[37ee0ce0c4cd57d5]::any::Any>::type_id" (;20;) (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    i64.load offset=1048976 align=4
    i64.store offset=8 align=4
    local.get 0
    i32.const 0
    i64.load offset=1048968 align=4
    i64.store align=4
  )
  (func $"std[d775520e4a0009e6]::sys::backtrace::__rust_end_short_backtrace::<std[d775520e4a0009e6]::alloc::rust_oom::{closure#0}, !>" (;21;) (type 2) (param i32 i32)
    i32.const 0
    i32.const 1
    i32.store8 offset=1049700
    unreachable
  )
  (func $"std[d775520e4a0009e6]::sys::backtrace::__rust_end_short_backtrace::<std[d775520e4a0009e6]::panicking::panic_handler::{closure#0}, !>" (;22;) (type 5) (param i32)
    local.get 0
    call $"std[d775520e4a0009e6]::panicking::panic_handler::{closure#0}"
    unreachable
  )
  (func $"std[d775520e4a0009e6]::panicking::panic_handler::{closure#0}" (;23;) (type 5) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 2
      i32.load offset=4
      local.tee 3
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load
      local.set 2
      local.get 1
      local.get 3
      i32.const 1
      i32.shr_u
      i32.store offset=4
      local.get 1
      local.get 2
      i32.store
      local.get 1
      i32.const 1048912
      local.get 0
      i32.load offset=8
      local.tee 0
      i32.load8_u offset=8
      local.get 0
      i32.load8_u offset=9
      call $"std[d775520e4a0009e6]::panicking::panic_with_hook"
      unreachable
    end
    local.get 1
    i32.const -1
    i32.store
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 1048940
    local.get 0
    i32.load offset=8
    local.tee 0
    i32.load8_u offset=8
    local.get 0
    i32.load8_u offset=9
    call $"std[d775520e4a0009e6]::panicking::panic_with_hook"
    unreachable
  )
  (func $"core[37ee0ce0c4cd57d5]::ptr::drop_glue::<std[d775520e4a0009e6]::panicking::panic_handler::FormatStringPayload>" (;24;) (type 5) (param i32)
    (local i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load
          local.tee 1
          i32.const 1
          i32.lt_s
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=4
          local.tee 2
          i32.const -4
          i32.add
          i32.load
          local.tee 0
          i32.const -8
          i32.and
          local.tee 3
          i32.const 4
          i32.const 8
          local.get 0
          i32.const 3
          i32.and
          local.tee 0
          select
          local.get 1
          i32.add
          i32.lt_u
          br_if 1 (;@2;)
          block ;; label = @4
            local.get 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 1
            i32.const 39
            i32.add
            i32.gt_u
            br_if 3 (;@1;)
          end
          local.get 2
          call $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::free"
        end
        return
      end
      i32.const 1049000
      i32.const 1049048
      call $"core[37ee0ce0c4cd57d5]::panicking::panic"
      unreachable
    end
    i32.const 1049064
    i32.const 1049112
    call $"core[37ee0ce0c4cd57d5]::panicking::panic"
    unreachable
  )
  (func $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::free" (;25;) (type 5) (param i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const -8
    i32.add
    local.tee 1
    local.get 0
    i32.const -4
    i32.add
    i32.load
    local.tee 2
    i32.const -8
    i32.and
    local.tee 0
    i32.add
    local.set 3
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 2
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 2
          i32.const 2
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.load
          local.tee 2
          local.get 0
          i32.add
          local.set 0
          block ;; label = @4
            local.get 1
            local.get 2
            i32.sub
            local.tee 1
            i32.const 0
            i32.load offset=1049644
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            i32.load offset=4
            i32.const 3
            i32.and
            i32.const 3
            i32.ne
            br_if 1 (;@3;)
            i32.const 0
            local.get 0
            i32.store offset=1049636
            local.get 3
            local.get 3
            i32.load offset=4
            i32.const -2
            i32.and
            i32.store offset=4
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 3
            local.get 0
            i32.store
            return
          end
          local.get 1
          local.get 2
          call $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::unlink_chunk"
        end
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    block ;; label = @9
                      block ;; label = @10
                        block ;; label = @11
                          local.get 3
                          i32.load offset=4
                          local.tee 2
                          i32.const 2
                          i32.and
                          br_if 0 (;@11;)
                          local.get 3
                          i32.const 0
                          i32.load offset=1049648
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 3
                          i32.const 0
                          i32.load offset=1049644
                          i32.eq
                          br_if 5 (;@6;)
                          local.get 3
                          local.get 2
                          i32.const -8
                          i32.and
                          local.tee 2
                          call $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::unlink_chunk"
                          local.get 1
                          local.get 2
                          local.get 0
                          i32.add
                          local.tee 0
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 1
                          local.get 0
                          i32.add
                          local.get 0
                          i32.store
                          local.get 1
                          i32.const 0
                          i32.load offset=1049644
                          i32.ne
                          br_if 1 (;@10;)
                          i32.const 0
                          local.get 0
                          i32.store offset=1049636
                          return
                        end
                        local.get 3
                        local.get 2
                        i32.const -2
                        i32.and
                        i32.store offset=4
                        local.get 1
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 1
                        local.get 0
                        i32.add
                        local.get 0
                        i32.store
                      end
                      local.get 0
                      i32.const 256
                      i32.lt_u
                      br_if 2 (;@7;)
                      i32.const 31
                      local.set 3
                      local.get 0
                      i32.const 16777216
                      i32.lt_u
                      br_if 1 (;@8;)
                      br 6 (;@3;)
                    end
                    i32.const 0
                    local.get 1
                    i32.store offset=1049648
                    i32.const 0
                    i32.const 0
                    i32.load offset=1049640
                    local.get 0
                    i32.add
                    local.tee 0
                    i32.store offset=1049640
                    local.get 1
                    local.get 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    block ;; label = @9
                      local.get 1
                      i32.const 0
                      i32.load offset=1049644
                      i32.ne
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.const 0
                      i32.store offset=1049636
                      i32.const 0
                      i32.const 0
                      i32.store offset=1049644
                    end
                    local.get 0
                    i32.const 0
                    i32.load offset=1049660
                    local.tee 2
                    i32.le_u
                    br_if 6 (;@2;)
                    i32.const -48
                    i32.const 0
                    i32.load offset=1049672
                    local.tee 1
                    i32.sub
                    i32.const -9
                    i32.and
                    i32.const 3
                    i32.eq
                    br_if 6 (;@2;)
                    i32.const 0
                    i32.load offset=1049648
                    local.tee 0
                    i32.eqz
                    br_if 6 (;@2;)
                    i32.const 0
                    i32.load offset=1049640
                    local.tee 4
                    i32.const 41
                    i32.lt_u
                    br_if 4 (;@4;)
                    local.get 1
                    i32.eqz
                    br_if 3 (;@5;)
                    i32.const 1049348
                    local.set 1
                    loop ;; label = @9
                      block ;; label = @10
                        local.get 1
                        i32.load
                        local.tee 3
                        local.get 0
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 3
                        local.get 1
                        i32.load offset=4
                        i32.add
                        i32.lt_u
                        br_if 6 (;@4;)
                      end
                      local.get 1
                      i32.load offset=8
                      local.set 1
                      br 0 (;@9;)
                    end
                  end
                  local.get 0
                  i32.const 38
                  local.get 0
                  i32.const 8
                  i32.shr_u
                  i32.clz
                  local.tee 3
                  i32.sub
                  i32.shr_u
                  i32.const 1
                  i32.and
                  local.get 3
                  i32.const 1
                  i32.shl
                  i32.or
                  i32.const 62
                  i32.xor
                  local.set 3
                  br 4 (;@3;)
                end
                block ;; label = @7
                  block ;; label = @8
                    i32.const 0
                    i32.load offset=1049628
                    local.tee 3
                    i32.const 1
                    local.get 0
                    i32.const 3
                    i32.shr_u
                    i32.shl
                    local.tee 2
                    i32.and
                    br_if 0 (;@8;)
                    i32.const 0
                    local.get 3
                    local.get 2
                    i32.or
                    i32.store offset=1049628
                    local.get 0
                    i32.const 248
                    i32.and
                    i32.const 1049364
                    i32.add
                    local.tee 0
                    local.set 3
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.const 248
                  i32.and
                  local.tee 0
                  i32.const 1049364
                  i32.add
                  local.set 3
                  local.get 0
                  i32.const 1049372
                  i32.add
                  i32.load
                  local.set 0
                end
                local.get 3
                local.get 1
                i32.store offset=8
                local.get 0
                local.get 1
                i32.store offset=12
                local.get 1
                local.get 3
                i32.store offset=12
                local.get 1
                local.get 0
                i32.store offset=8
                return
              end
              i32.const 0
              local.get 1
              i32.store offset=1049644
              i32.const 0
              i32.const 0
              i32.load offset=1049636
              local.get 0
              i32.add
              local.tee 0
              i32.store offset=1049636
              local.get 1
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 0
              i32.add
              local.get 0
              i32.store
              return
            end
            i32.const 1049128
            call $"core[37ee0ce0c4cd57d5]::panicking::panic_const::panic_const_div_by_zero"
            unreachable
          end
          i32.const 0
          local.set 1
          block ;; label = @4
            i32.const 0
            i32.load offset=1049356
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 1
            loop ;; label = @5
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 0
              i32.load offset=8
              local.tee 0
              br_if 0 (;@5;)
            end
          end
          i32.const 0
          i32.const 0
          i32.load offset=1049676
          local.tee 0
          local.get 1
          local.get 0
          local.get 1
          i32.gt_u
          select
          i32.const -1
          local.get 0
          select
          i32.store offset=1049668
          local.get 4
          local.get 2
          i32.le_u
          br_if 1 (;@2;)
          i32.const 0
          i32.const -1
          i32.store offset=1049660
          return
        end
        local.get 1
        i64.const 0
        i64.store offset=16 align=4
        local.get 1
        local.get 3
        i32.store offset=28
        local.get 3
        i32.const 2
        i32.shl
        i32.const 1049220
        i32.add
        local.set 2
        block ;; label = @3
          block ;; label = @4
            i32.const 0
            i32.load offset=1049632
            i32.const 1
            local.get 3
            i32.shl
            local.tee 4
            i32.and
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            i32.store
            local.get 1
            local.get 2
            i32.store offset=24
            local.get 1
            local.get 1
            i32.store offset=12
            local.get 1
            local.get 1
            i32.store offset=8
            i32.const 0
            i32.const 0
            i32.load offset=1049632
            local.get 4
            i32.or
            i32.store offset=1049632
            br 1 (;@3;)
          end
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 2
                i32.load
                local.tee 4
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 0
                i32.ne
                br_if 0 (;@6;)
                local.get 4
                local.set 3
                br 1 (;@5;)
              end
              local.get 0
              i32.const 0
              i32.const 25
              local.get 3
              i32.const 1
              i32.shr_u
              i32.sub
              local.get 3
              i32.const 31
              i32.eq
              select
              i32.shl
              local.set 2
              loop ;; label = @6
                local.get 4
                local.get 2
                i32.const 29
                i32.shr_u
                i32.const 4
                i32.and
                i32.add
                local.tee 5
                i32.load offset=16
                local.tee 3
                i32.eqz
                br_if 2 (;@4;)
                local.get 2
                i32.const 1
                i32.shl
                local.set 2
                local.get 3
                local.set 4
                local.get 3
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 0
                i32.ne
                br_if 0 (;@6;)
              end
            end
            local.get 3
            i32.load offset=8
            local.tee 0
            local.get 1
            i32.store offset=12
            local.get 3
            local.get 1
            i32.store offset=8
            local.get 1
            i32.const 0
            i32.store offset=24
            local.get 1
            local.get 3
            i32.store offset=12
            local.get 1
            local.get 0
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 5
          i32.const 16
          i32.add
          local.get 1
          i32.store
          local.get 1
          local.get 4
          i32.store offset=24
          local.get 1
          local.get 1
          i32.store offset=12
          local.get 1
          local.get 1
          i32.store offset=8
        end
        i32.const 0
        local.set 1
        i32.const 0
        i32.const 0
        i32.load offset=1049668
        i32.const -1
        i32.add
        local.tee 0
        i32.store offset=1049668
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
      end
      return
    end
    block ;; label = @1
      i32.const 0
      i32.load offset=1049356
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      loop ;; label = @2
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.load offset=8
        local.tee 0
        br_if 0 (;@2;)
      end
    end
    i32.const 0
    i32.const 0
    i32.load offset=1049676
    local.tee 0
    local.get 1
    local.get 0
    local.get 1
    i32.gt_u
    select
    i32.const -1
    local.get 0
    select
    i32.store offset=1049668
  )
  (func $"<std[d775520e4a0009e6]::panicking::panic_handler::FormatStringPayload as core[37ee0ce0c4cd57d5]::fmt::Display>::fmt" (;26;) (type 1) (param i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      i32.load
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.get 0
      i32.load offset=4
      local.get 0
      i32.load offset=8
      local.get 1
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 0)
      return
    end
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 0
    i32.load offset=12
    i32.load
    local.tee 0
    i32.load
    local.get 0
    i32.load offset=4
    call $"core[37ee0ce0c4cd57d5]::fmt::write"
  )
  (func $"<std[d775520e4a0009e6]::panicking::panic_handler::FormatStringPayload as core[37ee0ce0c4cd57d5]::panic::PanicPayload>::take_box" (;27;) (type 2) (param i32 i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      local.get 1
      i32.load
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 0
      i32.store offset=24
      local.get 2
      i64.const 4294967296
      i64.store offset=16 align=4
      local.get 2
      i32.const 16
      i32.add
      i32.const 1048888
      local.get 3
      i32.load
      local.tee 3
      i32.load
      local.get 3
      i32.load offset=4
      call $"core[37ee0ce0c4cd57d5]::fmt::write"
      drop
      local.get 2
      local.get 2
      i32.load offset=24
      local.tee 3
      i32.store offset=8
      local.get 2
      local.get 2
      i64.load offset=16 align=4
      local.tee 4
      i64.store
      local.get 1
      local.get 3
      i32.store offset=8
      local.get 1
      local.get 4
      i64.store align=4
    end
    local.get 1
    i32.load offset=8
    local.set 3
    local.get 1
    i32.const 0
    i32.store offset=8
    local.get 1
    i64.load align=4
    local.set 4
    local.get 1
    i64.const 4294967296
    i64.store align=4
    local.get 2
    local.get 3
    i32.store offset=24
    local.get 2
    local.get 4
    i64.store offset=16
    block ;; label = @1
      i32.const 12
      call $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::malloc"
      local.tee 1
      br_if 0 (;@1;)
      i32.const 4
      i32.const 12
      call $"alloc[42d2b33bd937efdb]::alloc::handle_alloc_error"
      unreachable
    end
    local.get 1
    local.get 2
    i32.load offset=24
    i32.store offset=8
    local.get 1
    local.get 2
    i64.load offset=16
    i64.store align=4
    local.get 0
    i32.const 1049204
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $"<std[d775520e4a0009e6]::panicking::panic_handler::FormatStringPayload as core[37ee0ce0c4cd57d5]::panic::PanicPayload>::get" (;28;) (type 2) (param i32 i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      local.get 1
      i32.load
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 0
      i32.store offset=28
      local.get 2
      i64.const 4294967296
      i64.store offset=20 align=4
      local.get 2
      i32.const 20
      i32.add
      i32.const 1048888
      local.get 3
      i32.load
      local.tee 3
      i32.load
      local.get 3
      i32.load offset=4
      call $"core[37ee0ce0c4cd57d5]::fmt::write"
      drop
      local.get 2
      local.get 2
      i32.load offset=28
      local.tee 3
      i32.store offset=16
      local.get 2
      local.get 2
      i64.load offset=20 align=4
      local.tee 4
      i64.store offset=8
      local.get 1
      local.get 3
      i32.store offset=8
      local.get 1
      local.get 4
      i64.store align=4
    end
    local.get 0
    i32.const 1049204
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $"<alloc[42d2b33bd937efdb]::raw_vec::RawVecInner<_>>::reserve::do_reserve_and_handle::<alloc[42d2b33bd937efdb]::alloc::Global>" (;29;) (type 8) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block ;; label = @1
      local.get 2
      local.get 1
      i32.add
      local.tee 1
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call $"alloc[42d2b33bd937efdb]::raw_vec::handle_error"
      unreachable
    end
    local.get 3
    i32.const 4
    i32.add
    local.get 0
    i32.load
    local.tee 2
    local.get 0
    i32.load offset=4
    local.get 1
    local.get 2
    i32.const 1
    i32.shl
    local.tee 2
    local.get 1
    local.get 2
    i32.gt_u
    select
    local.tee 2
    i32.const 8
    local.get 2
    i32.const 8
    i32.gt_u
    select
    local.tee 2
    call $"<alloc[42d2b33bd937efdb]::raw_vec::RawVecInner>::finish_grow"
    block ;; label = @1
      local.get 3
      i32.load offset=4
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=8
      local.get 3
      i32.load offset=12
      call $"alloc[42d2b33bd937efdb]::raw_vec::handle_error"
      unreachable
    end
    local.get 3
    i32.load offset=8
    local.set 1
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $"<alloc[42d2b33bd937efdb]::raw_vec::RawVecInner>::finish_grow" (;30;) (type 10) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 3
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 1
        i32.const 4
        local.set 2
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    block ;; label = @9
                      block ;; label = @10
                        local.get 1
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 2
                        i32.const -4
                        i32.add
                        local.tee 4
                        i32.load
                        local.tee 5
                        i32.const -8
                        i32.and
                        local.tee 6
                        i32.const 4
                        i32.const 8
                        local.get 5
                        i32.const 3
                        i32.and
                        local.tee 7
                        select
                        local.get 1
                        i32.add
                        i32.lt_u
                        br_if 1 (;@9;)
                        block ;; label = @11
                          local.get 7
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 6
                          local.get 1
                          i32.const 39
                          i32.add
                          i32.gt_u
                          br_if 3 (;@8;)
                        end
                        i32.const -48
                        i32.const 0
                        i32.load offset=1049672
                        local.tee 8
                        i32.sub
                        i32.const -9
                        i32.and
                        i32.const -3
                        i32.add
                        local.get 3
                        i32.le_u
                        br_if 7 (;@3;)
                        i32.const 16
                        local.get 3
                        i32.const 11
                        i32.add
                        i32.const -8
                        i32.and
                        local.get 3
                        i32.const 11
                        i32.lt_u
                        select
                        local.set 1
                        local.get 2
                        i32.const -8
                        i32.add
                        local.set 9
                        block ;; label = @11
                          block ;; label = @12
                            block ;; label = @13
                              block ;; label = @14
                                block ;; label = @15
                                  local.get 7
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 9
                                  local.get 6
                                  i32.add
                                  local.set 7
                                  local.get 6
                                  local.get 1
                                  i32.ge_u
                                  br_if 3 (;@12;)
                                  local.get 7
                                  i32.const 0
                                  i32.load offset=1049648
                                  i32.eq
                                  br_if 4 (;@11;)
                                  local.get 7
                                  i32.const 0
                                  i32.load offset=1049644
                                  i32.eq
                                  br_if 2 (;@13;)
                                  local.get 7
                                  i32.load offset=4
                                  local.tee 5
                                  i32.const 2
                                  i32.and
                                  br_if 10 (;@5;)
                                  local.get 5
                                  i32.const -8
                                  i32.and
                                  local.tee 5
                                  local.get 6
                                  i32.add
                                  local.tee 6
                                  local.get 1
                                  i32.lt_u
                                  br_if 10 (;@5;)
                                  local.get 7
                                  local.get 5
                                  call $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::unlink_chunk"
                                  local.get 6
                                  local.get 1
                                  i32.sub
                                  local.tee 7
                                  i32.const 16
                                  i32.lt_u
                                  br_if 1 (;@14;)
                                  local.get 4
                                  local.get 1
                                  local.get 4
                                  i32.load
                                  i32.const 1
                                  i32.and
                                  i32.or
                                  i32.const 2
                                  i32.or
                                  i32.store
                                  local.get 9
                                  local.get 1
                                  i32.add
                                  local.tee 1
                                  local.get 7
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  local.get 9
                                  local.get 6
                                  i32.add
                                  local.tee 6
                                  local.get 6
                                  i32.load offset=4
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  local.get 1
                                  local.get 7
                                  call $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::dispose_chunk"
                                  br 9 (;@6;)
                                end
                                local.get 1
                                i32.const 256
                                i32.lt_u
                                br_if 9 (;@5;)
                                local.get 6
                                local.get 1
                                i32.le_u
                                br_if 9 (;@5;)
                                local.get 9
                                i32.eqz
                                br_if 9 (;@5;)
                                local.get 6
                                local.get 1
                                i32.sub
                                local.get 8
                                i32.const 1
                                i32.shl
                                i32.gt_u
                                br_if 9 (;@5;)
                                local.get 2
                                local.set 1
                                br 10 (;@4;)
                              end
                              local.get 4
                              local.get 6
                              local.get 4
                              i32.load
                              i32.const 1
                              i32.and
                              i32.or
                              i32.const 2
                              i32.or
                              i32.store
                              local.get 9
                              local.get 6
                              i32.add
                              local.tee 1
                              local.get 1
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br 7 (;@6;)
                            end
                            i32.const 0
                            i32.load offset=1049636
                            local.get 6
                            i32.add
                            local.tee 6
                            local.get 1
                            i32.lt_u
                            br_if 7 (;@5;)
                            block ;; label = @13
                              block ;; label = @14
                                local.get 6
                                local.get 1
                                i32.sub
                                local.tee 7
                                i32.const 15
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 4
                                local.get 5
                                i32.const 1
                                i32.and
                                local.get 6
                                i32.or
                                i32.const 2
                                i32.or
                                i32.store
                                local.get 9
                                local.get 6
                                i32.add
                                local.tee 1
                                local.get 1
                                i32.load offset=4
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                i32.const 0
                                local.set 7
                                i32.const 0
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 4
                              local.get 1
                              local.get 5
                              i32.const 1
                              i32.and
                              i32.or
                              i32.const 2
                              i32.or
                              i32.store
                              local.get 9
                              local.get 1
                              i32.add
                              local.tee 1
                              local.get 7
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get 9
                              local.get 6
                              i32.add
                              local.tee 6
                              local.get 7
                              i32.store
                              local.get 6
                              local.get 6
                              i32.load offset=4
                              i32.const -2
                              i32.and
                              i32.store offset=4
                            end
                            i32.const 0
                            local.get 1
                            i32.store offset=1049644
                            i32.const 0
                            local.get 7
                            i32.store offset=1049636
                            br 6 (;@6;)
                          end
                          local.get 6
                          local.get 1
                          i32.sub
                          local.tee 6
                          i32.const 15
                          i32.le_u
                          br_if 5 (;@6;)
                          local.get 4
                          local.get 1
                          local.get 5
                          i32.const 1
                          i32.and
                          i32.or
                          i32.const 2
                          i32.or
                          i32.store
                          local.get 9
                          local.get 1
                          i32.add
                          local.tee 1
                          local.get 6
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 7
                          local.get 7
                          i32.load offset=4
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 1
                          local.get 6
                          call $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::dispose_chunk"
                          br 5 (;@6;)
                        end
                        i32.const 0
                        i32.load offset=1049640
                        local.get 6
                        i32.add
                        local.tee 6
                        local.get 1
                        i32.gt_u
                        br_if 3 (;@7;)
                        br 5 (;@5;)
                      end
                      local.get 3
                      call $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::malloc"
                      local.tee 1
                      br_if 5 (;@4;)
                      br 6 (;@3;)
                    end
                    i32.const 1049000
                    i32.const 1049048
                    call $"core[37ee0ce0c4cd57d5]::panicking::panic"
                    unreachable
                  end
                  i32.const 1049064
                  i32.const 1049112
                  call $"core[37ee0ce0c4cd57d5]::panicking::panic"
                  unreachable
                end
                local.get 4
                local.get 1
                local.get 5
                i32.const 1
                i32.and
                i32.or
                i32.const 2
                i32.or
                i32.store
                local.get 9
                local.get 1
                i32.add
                local.tee 7
                local.get 6
                local.get 1
                i32.sub
                local.tee 1
                i32.const 1
                i32.or
                i32.store offset=4
                i32.const 0
                local.get 1
                i32.store offset=1049640
                i32.const 0
                local.get 7
                i32.store offset=1049648
              end
              local.get 9
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.set 1
              br 1 (;@4;)
            end
            local.get 3
            call $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::malloc"
            local.tee 1
            i32.eqz
            br_if 1 (;@3;)
            block ;; label = @5
              local.get 3
              i32.const -4
              i32.const -8
              local.get 4
              i32.load
              local.tee 6
              i32.const 3
              i32.and
              select
              local.get 6
              i32.const -8
              i32.and
              i32.add
              local.tee 6
              local.get 3
              local.get 6
              i32.lt_u
              select
              local.tee 6
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              local.get 2
              local.get 6
              memory.copy
            end
            local.get 2
            call $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::free"
          end
          local.get 0
          local.get 1
          i32.store offset=4
          i32.const 0
          local.set 1
          br 1 (;@2;)
        end
        i32.const 1
        local.set 1
        local.get 0
        i32.const 1
        i32.store offset=4
      end
      i32.const 8
      local.set 2
    end
    local.get 0
    local.get 2
    i32.add
    local.get 3
    i32.store
    local.get 0
    local.get 1
    i32.store
  )
  (func $"core[37ee0ce0c4cd57d5]::ptr::drop_glue::<alloc[42d2b33bd937efdb]::string::String>" (;31;) (type 5) (param i32)
    (local i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=4
          local.tee 2
          i32.const -4
          i32.add
          i32.load
          local.tee 0
          i32.const -8
          i32.and
          local.tee 3
          i32.const 4
          i32.const 8
          local.get 0
          i32.const 3
          i32.and
          local.tee 0
          select
          local.get 1
          i32.add
          i32.lt_u
          br_if 1 (;@2;)
          block ;; label = @4
            local.get 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 1
            i32.const 39
            i32.add
            i32.gt_u
            br_if 3 (;@1;)
          end
          local.get 2
          call $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::free"
        end
        return
      end
      i32.const 1049000
      i32.const 1049048
      call $"core[37ee0ce0c4cd57d5]::panicking::panic"
      unreachable
    end
    i32.const 1049064
    i32.const 1049112
    call $"core[37ee0ce0c4cd57d5]::panicking::panic"
    unreachable
  )
  (func $"<alloc[42d2b33bd937efdb]::string::String as core[37ee0ce0c4cd57d5]::any::Any>::type_id" (;32;) (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    i64.load offset=1048992 align=4
    i64.store offset=8 align=4
    local.get 0
    i32.const 0
    i64.load offset=1048984 align=4
    i64.store align=4
  )
  (func $"<alloc[42d2b33bd937efdb]::string::String as core[37ee0ce0c4cd57d5]::fmt::Write>::write_str.81" (;33;) (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 2
          local.get 0
          i32.load
          local.get 0
          i32.load offset=8
          local.tee 3
          i32.sub
          i32.le_u
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          local.get 2
          call $"<alloc[42d2b33bd937efdb]::raw_vec::RawVecInner<_>>::reserve::do_reserve_and_handle::<alloc[42d2b33bd937efdb]::alloc::Global>"
          local.get 0
          i32.load offset=8
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      memory.copy
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0
  )
  (func $"<alloc[42d2b33bd937efdb]::string::String as core[37ee0ce0c4cd57d5]::fmt::Write>::write_char.82" (;34;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.const 128
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        br 1 (;@1;)
      end
      block ;; label = @2
        local.get 1
        i32.const 2048
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 2
        local.set 3
        br 1 (;@1;)
      end
      i32.const 3
      i32.const 4
      local.get 1
      i32.const 65536
      i32.lt_u
      select
      local.set 3
    end
    block ;; label = @1
      local.get 3
      local.get 0
      i32.load
      local.get 2
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      call $"<alloc[42d2b33bd937efdb]::raw_vec::RawVecInner<_>>::reserve::do_reserve_and_handle::<alloc[42d2b33bd937efdb]::alloc::Global>"
    end
    local.get 0
    i32.load offset=4
    local.get 2
    i32.add
    local.set 4
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 5
        local.get 1
        i32.const 6
        i32.shr_u
        local.set 6
        block ;; label = @3
          local.get 1
          i32.const 2048
          i32.ge_u
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.store8 offset=1
          local.get 4
          local.get 6
          i32.const 192
          i32.or
          i32.store8
          br 2 (;@1;)
        end
        local.get 1
        i32.const 12
        i32.shr_u
        local.set 7
        local.get 6
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 6
        block ;; label = @3
          local.get 1
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.store8 offset=2
          local.get 4
          local.get 6
          i32.store8 offset=1
          local.get 4
          local.get 7
          i32.const 224
          i32.or
          i32.store8
          br 2 (;@1;)
        end
        local.get 4
        local.get 5
        i32.store8 offset=3
        local.get 4
        local.get 6
        i32.store8 offset=2
        local.get 4
        local.get 7
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        i32.store8 offset=1
        local.get 4
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const -16
        i32.or
        i32.store8
        br 1 (;@1;)
      end
      local.get 4
      local.get 1
      i32.store8
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0
  )
  (func $"<alloc[42d2b33bd937efdb]::string::String as core[37ee0ce0c4cd57d5]::fmt::Write>::write_fmt" (;35;) (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 1048888
    local.get 1
    local.get 2
    call $"core[37ee0ce0c4cd57d5]::fmt::write"
  )
  (func $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::unlink_chunk" (;36;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.load offset=12
    local.set 2
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 1
            i32.const 256
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=24
            local.set 3
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 2
                  local.get 0
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 20
                  i32.const 16
                  local.get 0
                  i32.load offset=20
                  local.tee 2
                  select
                  i32.add
                  i32.load
                  local.tee 1
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 2
                  br 2 (;@5;)
                end
                local.get 0
                i32.load offset=8
                local.tee 1
                local.get 2
                i32.store offset=12
                local.get 2
                local.get 1
                i32.store offset=8
                br 1 (;@5;)
              end
              local.get 0
              i32.const 20
              i32.add
              local.get 0
              i32.const 16
              i32.add
              local.get 2
              select
              local.set 4
              loop ;; label = @6
                local.get 4
                local.set 5
                local.get 1
                local.tee 2
                i32.const 20
                i32.add
                local.get 2
                i32.const 16
                i32.add
                local.get 2
                i32.load offset=20
                local.tee 1
                select
                local.set 4
                local.get 2
                i32.const 20
                i32.const 16
                local.get 1
                select
                i32.add
                i32.load
                local.tee 1
                br_if 0 (;@6;)
              end
              local.get 5
              i32.const 0
              i32.store
            end
            local.get 3
            i32.eqz
            br_if 2 (;@2;)
            block ;; label = @5
              block ;; label = @6
                local.get 0
                local.get 0
                i32.load offset=28
                i32.const 2
                i32.shl
                i32.const 1049220
                i32.add
                local.tee 1
                i32.load
                i32.eq
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=16
                local.get 0
                i32.eq
                br_if 1 (;@5;)
                local.get 3
                local.get 2
                i32.store offset=20
                local.get 2
                br_if 3 (;@3;)
                br 4 (;@2;)
              end
              local.get 1
              local.get 2
              i32.store
              local.get 2
              i32.eqz
              br_if 4 (;@1;)
              br 2 (;@3;)
            end
            local.get 3
            local.get 2
            i32.store offset=16
            local.get 2
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          block ;; label = @4
            local.get 2
            local.get 0
            i32.load offset=8
            local.tee 4
            i32.eq
            br_if 0 (;@4;)
            local.get 4
            local.get 2
            i32.store offset=12
            local.get 2
            local.get 4
            i32.store offset=8
            return
          end
          i32.const 0
          i32.const 0
          i32.load offset=1049628
          i32.const -2
          local.get 1
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store offset=1049628
          return
        end
        local.get 2
        local.get 3
        i32.store offset=24
        block ;; label = @3
          local.get 0
          i32.load offset=16
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 1
          i32.store offset=16
          local.get 1
          local.get 2
          i32.store offset=24
        end
        local.get 0
        i32.load offset=20
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        i32.store offset=20
        local.get 1
        local.get 2
        i32.store offset=24
        return
      end
      return
    end
    i32.const 0
    i32.const 0
    i32.load offset=1049632
    i32.const -2
    local.get 0
    i32.load offset=28
    i32.rotl
    i32.and
    i32.store offset=1049632
  )
  (func $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::dispose_chunk" (;37;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 0
              i32.load offset=4
              local.tee 3
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 3
              i32.const 2
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              i32.load
              local.tee 3
              local.get 1
              i32.add
              local.set 1
              block ;; label = @6
                local.get 0
                local.get 3
                i32.sub
                local.tee 0
                i32.const 0
                i32.load offset=1049644
                i32.ne
                br_if 0 (;@6;)
                local.get 2
                i32.load offset=4
                i32.const 3
                i32.and
                i32.const 3
                i32.ne
                br_if 1 (;@5;)
                i32.const 0
                local.get 1
                i32.store offset=1049636
                local.get 2
                local.get 2
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
                local.get 0
                local.get 1
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 2
                local.get 1
                i32.store
                return
              end
              local.get 0
              local.get 3
              call $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::unlink_chunk"
            end
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 2
                  i32.load offset=4
                  local.tee 3
                  i32.const 2
                  i32.and
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 0
                  i32.load offset=1049648
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 0
                  i32.load offset=1049644
                  i32.eq
                  br_if 4 (;@3;)
                  local.get 2
                  local.get 3
                  i32.const -8
                  i32.and
                  local.tee 3
                  call $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::unlink_chunk"
                  local.get 0
                  local.get 3
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 1
                  i32.add
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 0
                  i32.load offset=1049644
                  i32.ne
                  br_if 1 (;@6;)
                  i32.const 0
                  local.get 1
                  i32.store offset=1049636
                  return
                end
                local.get 2
                local.get 3
                i32.const -2
                i32.and
                i32.store offset=4
                local.get 0
                local.get 1
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                local.get 1
                i32.add
                local.get 1
                i32.store
              end
              block ;; label = @6
                local.get 1
                i32.const 256
                i32.lt_u
                br_if 0 (;@6;)
                i32.const 31
                local.set 2
                local.get 1
                i32.const 16777216
                i32.lt_u
                br_if 4 (;@2;)
                br 5 (;@1;)
              end
              block ;; label = @6
                block ;; label = @7
                  i32.const 0
                  i32.load offset=1049628
                  local.tee 2
                  i32.const 1
                  local.get 1
                  i32.const 3
                  i32.shr_u
                  i32.shl
                  local.tee 3
                  i32.and
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 2
                  local.get 3
                  i32.or
                  i32.store offset=1049628
                  local.get 1
                  i32.const 248
                  i32.and
                  i32.const 1049364
                  i32.add
                  local.tee 1
                  local.set 2
                  br 1 (;@6;)
                end
                local.get 1
                i32.const 248
                i32.and
                local.tee 1
                i32.const 1049364
                i32.add
                local.set 2
                local.get 1
                i32.const 1049372
                i32.add
                i32.load
                local.set 1
              end
              local.get 2
              local.get 0
              i32.store offset=8
              local.get 1
              local.get 0
              i32.store offset=12
              local.get 0
              local.get 2
              i32.store offset=12
              local.get 0
              local.get 1
              i32.store offset=8
              return
            end
            i32.const 0
            local.get 0
            i32.store offset=1049648
            i32.const 0
            i32.const 0
            i32.load offset=1049640
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=1049640
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 0
            i32.load offset=1049644
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            i32.const 0
            i32.store offset=1049636
            i32.const 0
            i32.const 0
            i32.store offset=1049644
          end
          return
        end
        i32.const 0
        local.get 0
        i32.store offset=1049644
        i32.const 0
        i32.const 0
        i32.load offset=1049636
        local.get 1
        i32.add
        local.tee 1
        i32.store offset=1049636
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 1
        i32.add
        local.get 1
        i32.store
        return
      end
      local.get 1
      i32.const 38
      local.get 1
      i32.const 8
      i32.shr_u
      i32.clz
      local.tee 2
      i32.sub
      i32.shr_u
      i32.const 1
      i32.and
      local.get 2
      i32.const 1
      i32.shl
      i32.or
      i32.const 62
      i32.xor
      local.set 2
    end
    local.get 0
    i64.const 0
    i64.store offset=16 align=4
    local.get 0
    local.get 2
    i32.store offset=28
    local.get 2
    i32.const 2
    i32.shl
    i32.const 1049220
    i32.add
    local.set 3
    block ;; label = @1
      i32.const 0
      i32.load offset=1049632
      i32.const 1
      local.get 2
      i32.shl
      local.tee 4
      i32.and
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      i32.store
      local.get 0
      local.get 3
      i32.store offset=24
      local.get 0
      local.get 0
      i32.store offset=12
      local.get 0
      local.get 0
      i32.store offset=8
      i32.const 0
      i32.const 0
      i32.load offset=1049632
      local.get 4
      i32.or
      i32.store offset=1049632
      return
    end
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 3
          i32.load
          local.tee 4
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.ne
          br_if 0 (;@3;)
          local.get 4
          local.set 2
          br 1 (;@2;)
        end
        local.get 1
        i32.const 0
        i32.const 25
        local.get 2
        i32.const 1
        i32.shr_u
        i32.sub
        local.get 2
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set 3
        loop ;; label = @3
          local.get 4
          local.get 3
          i32.const 29
          i32.shr_u
          i32.const 4
          i32.and
          i32.add
          local.tee 5
          i32.load offset=16
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.const 1
          i32.shl
          local.set 3
          local.get 2
          local.set 4
          local.get 2
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.load offset=8
      local.tee 1
      local.get 0
      i32.store offset=12
      local.get 2
      local.get 0
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      local.get 2
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=8
      return
    end
    local.get 5
    i32.const 16
    i32.add
    local.get 0
    i32.store
    local.get 0
    local.get 4
    i32.store offset=24
    local.get 0
    local.get 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.store offset=8
  )
  (func $"<std[d775520e4a0009e6]::panicking::panic_handler::StaticStrPayload as core[37ee0ce0c4cd57d5]::fmt::Display>::fmt" (;38;) (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 0)
  )
  (func $"<std[d775520e4a0009e6]::panicking::panic_handler::StaticStrPayload as core[37ee0ce0c4cd57d5]::panic::PanicPayload>::take_box" (;39;) (type 2) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 3
    block ;; label = @1
      i32.const 8
      call $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::malloc"
      local.tee 1
      br_if 0 (;@1;)
      i32.const 4
      i32.const 8
      call $"alloc[42d2b33bd937efdb]::alloc::handle_alloc_error"
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1049188
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $"<std[d775520e4a0009e6]::panicking::panic_handler::StaticStrPayload as core[37ee0ce0c4cd57d5]::panic::PanicPayload>::get" (;40;) (type 2) (param i32 i32)
    local.get 0
    i32.const 1049188
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $"<std[d775520e4a0009e6]::panicking::panic_handler::StaticStrPayload as core[37ee0ce0c4cd57d5]::panic::PanicPayload>::as_str" (;41;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store
  )
  (func $"<dlmalloc[8627653fc6e0bd47]::dlmalloc::Dlmalloc<dlmalloc[8627653fc6e0bd47]::sys::System>>::insert_large_chunk" (;42;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    i32.const 31
    local.set 2
    block ;; label = @1
      local.get 1
      i32.const 16777216
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 38
      local.get 1
      i32.const 8
      i32.shr_u
      i32.clz
      local.tee 2
      i32.sub
      i32.shr_u
      i32.const 1
      i32.and
      local.get 2
      i32.const 1
      i32.shl
      i32.or
      i32.const 62
      i32.xor
      local.set 2
    end
    local.get 0
    i64.const 0
    i64.store offset=16 align=4
    local.get 0
    local.get 2
    i32.store offset=28
    local.get 2
    i32.const 2
    i32.shl
    i32.const 1049220
    i32.add
    local.set 3
    block ;; label = @1
      i32.const 0
      i32.load offset=1049632
      i32.const 1
      local.get 2
      i32.shl
      local.tee 4
      i32.and
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      i32.store
      local.get 0
      local.get 3
      i32.store offset=24
      local.get 0
      local.get 0
      i32.store offset=12
      local.get 0
      local.get 0
      i32.store offset=8
      i32.const 0
      i32.const 0
      i32.load offset=1049632
      local.get 4
      i32.or
      i32.store offset=1049632
      return
    end
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 3
          i32.load
          local.tee 4
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.ne
          br_if 0 (;@3;)
          local.get 4
          local.set 2
          br 1 (;@2;)
        end
        local.get 1
        i32.const 0
        i32.const 25
        local.get 2
        i32.const 1
        i32.shr_u
        i32.sub
        local.get 2
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set 3
        loop ;; label = @3
          local.get 4
          local.get 3
          i32.const 29
          i32.shr_u
          i32.const 4
          i32.and
          i32.add
          local.tee 5
          i32.load offset=16
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.const 1
          i32.shl
          local.set 3
          local.get 2
          local.set 4
          local.get 2
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.load offset=8
      local.tee 3
      local.get 0
      i32.store offset=12
      local.get 2
      local.get 0
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      local.get 2
      i32.store offset=12
      local.get 0
      local.get 3
      i32.store offset=8
      return
    end
    local.get 5
    i32.const 16
    i32.add
    local.get 0
    i32.store
    local.get 0
    local.get 4
    i32.store offset=24
    local.get 0
    local.get 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.store offset=8
  )
  (func $"std[d775520e4a0009e6]::alloc::rust_oom" (;43;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $"std[d775520e4a0009e6]::sys::backtrace::__rust_end_short_backtrace::<std[d775520e4a0009e6]::alloc::rust_oom::{closure#0}, !>"
    unreachable
  )
  (data $.rodata (;0;) (i32.const 1048576) "\c0\00/rustc/58cf8f9c35b355199727627d07ae34a4e2846d67/library/std/src/sys/sync/rwlock/no_threads.rs\00/rustc/58cf8f9c35b355199727627d07ae34a4e2846d67/library/alloc/src/raw_vec/mod.rs\00/rust/deps/dlmalloc-0.2.14/src/dlmalloc.rs\00src/lib.rs\00\00\dc\00\10\00\0a\00\00\00\16\00\00\00\05\00\00\00capacity overflow\00\00\00`\00\10\00P\00\00\00\1c\00\00\00\05\00\00\00attempt to divide by zero\00\00\00\02\00\00\00\0c\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0a\00\00\00\10\00\00\00\04\00\00\00\0b\00\00\00\0c\00\00\00\0d\00\00\00\0e\00\00\00\5c\f6\e9_\dc\02\f6\b9\f1\c1pl\f2a\c1$;7MJ\82\10E\09\c3\a5a\d1? :\8fassertion failed: psize >= size + min_overhead\00\00\b1\00\10\00*\00\00\00\e9\04\00\00\09\00\00\00assertion failed: psize <= size + max_overhead\00\00\b1\00\10\00*\00\00\00\ef\04\00\00\0d\00\00\00\b1\00\10\00*\00\00\00M\05\00\00\1e\00\00\00rwlock overflowed read locks\02\00\10\00]\00\00\00\18\00\00\00,\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\0f\00\00\00\02\00\00\00\0c\00\00\00\04\00\00\00\10\00\00\00")
  (data $.data (;1;) (i32.const 1049220) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\ff\0f\00\00")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.99.1 (58cf8f9c3 2026-10-13)")
  )
  (@custom "target_features" (after data) "\08+\0bbulk-memory+\0fbulk-memory-opt+\16call-indirect-overlong+\0amultivalue+\0fmutable-globals+\13nontrapping-fptoint+\0freference-types+\08sign-ext")
)

#include "segv_core.h"

static VALUE rb_segv(VALUE self) {
  raise(11);
  return Qnil;
}

void Init_segv_core() {
  VALUE rb_mSegv = rb_define_module("Segv");
  VALUE rb_mSegvCore = rb_define_module_under(rb_mSegv, "Core");
  rb_define_module_function(rb_mSegvCore, "segv", rb_segv, 0);
}

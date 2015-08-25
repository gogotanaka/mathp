#include "NMath.h"

VALUE rb_mNMath;

void
Init_NMath(void)
{
  rb_mNMath = rb_define_module("NMath");
}

# RustlerMode

Reproduce problem when attempting to switch profiles with `MIX_ENV`. When using `MIX_ENV`, we should always use the correct build profile. Currently, switching does not work reliably:

```
MIX_ENV=prod mix run -e Reproduce.mode; MIX_ENV=dev mix run -e Reproduce.mode; MIX_ENV=prod mix run -e Reproduce.mode
==> rustler
Compiling 1 file (.ex)
==> rustler_mode
Compiling 1 file (.ex)
Compiling crate reproduce in release mode (native/reproduce)
    Finished release [optimized] target(s) in 0.01s
"release"
==> rustler
Compiling 1 file (.ex)
==> rustler_mode
Compiling 1 file (.ex)
Compiling crate reproduce in debug mode (native/reproduce)
    Finished dev [unoptimized + debuginfo] target(s) in 0.01s
"debug"
"debug"
```

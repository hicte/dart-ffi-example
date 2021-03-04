# dart-ffi-example
example for using c code in dart.

## generate shared library file:
```sh
# in linux
gcc -shared -o shared_lib.so my_lib.c 
```
## run:
```sh
dart main.dart
```

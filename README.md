# dart-ffi-example
example for using C code in Dart.

### generate shared library file:
```sh
# for linux
# (see common instructions for other platforms)

gcc -shared -o shared_lib.so my_lib.c 
```
### run:
```sh
dart main.dart
```

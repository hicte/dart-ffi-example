import 'dart:ffi' as ffi;

typedef SystemC = ffi.Int32 Function(ffi.Int32, ffi.Int32);
typedef SystemDart = int Function(int, int);

void main() {
  // change the path for other platforms (Mac, Windows)
  const sharedLibPath = './shared_lib.so';
  const addFuncName = 'add';
  const powerFuncName = 'power';

  final sharedLib = ffi.DynamicLibrary.open(sharedLibPath);

  final add = sharedLib.lookupFunction<SystemC, SystemDart>(addFuncName);
  final power = sharedLib.lookupFunction<SystemC, SystemDart>(powerFuncName);

  int onePlusTow = add(1, 2);
  int towPowerThree = power(2, 3);

  print(onePlusTow);
  print(towPowerThree);
}

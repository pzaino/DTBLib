# DTBLib

This is a library for reading and parsing Device Tree Blob files. It is written in ANSI C and without Standard C Library (SCL) dependencies.

The reason for writing this library is that I needed a library for parsing DTB files in a project of mine, but I couldn't find any library that was written in ANSI C and without SCL dependencies. So I decided to write my own library.

This library is specifically written to be used in the RISC OS Kernel project, but it can be used in any other project as well as long as you understand what krnllib does and doesn't do.

## Features

* Written in ANSI C and without SCL dependencies.
* Supports parsing DTB files.
* Supports parsing DTB files with a size of up to 4MB.
* Supports parsing DTB files with a maximum depth of 32 levels.
* Supports parsing DTB files with a maximum string length of 256 characters.
* Supports parsing DTB files with a maximum number of 65536 nodes.

## Building

The library is very easy to build. You just need to run the following command:

To build with GCC on RISC OS (go in the src directory):

```bash
MkGCC
```

To build with DDE on RISC OS (go in the src directory):

```bash
MkDDE
```

To build with GCC on Linux:

```bash
./.rocog/scripts/ux-src gen
./ux-src/MkGCC.sh
```

## Usage

The library is very easy to use. You just need to include the header file and link the library to your project. Then you can use the library to parse DTB files.

### Example

```c
#include "DTBLib.h"

...
```

## License

This library is licensed under Apache License 2.0. See the [LICENSE](LICENSE) file for details.

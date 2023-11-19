# DTBLib: Device Tree Blob Parsing Library

**Overview:**

DTBLib is a specialized library designed for reading and parsing Device Tree Blob (DTB) files. Developed in strict adherence to ANSI C standards, this library is distinct for its lack of dependencies on the Standard C Library (SCL). This unique attribute makes DTBLib particularly suited for use in environments where standard library support is unavailable or undesirable.

**Background:**

The genesis of DTBLib was born out of a necessity encountered during a personal project. A need arose for a tool capable of parsing DTB files within the constraints of ANSI C and without relying on SCL. When existing solutions fell short of these specific requirements, the development of DTBLib was initiated to bridge this gap.

**Primary Use Case:**

While the initial intention behind DTBLib was to serve as a component in the RISC OS Kernel — specifically within its Hardware Abstraction Layer (HAL) — the library's design is not exclusive to this use. Its creation was driven by an experimental endeavor to integrate DeviceTree support into RISC OS. Nevertheless, DTBLib's versatile and adaptable nature makes it a suitable choice for a wide range of projects that require DTB parsing capabilities under similar constraints.

**Considerations for Usage:**

Potential users should be aware of the following:

DTBLib is tailor-made for environments similar to the RISC OS Kernel's HAL. Its functionality aligns with the requirements and limitations of such systems.
A comprehensive understanding of the library's internal workings, particularly the functions and limitations of krnllib (the kernel library used by DTBLib), is crucial for effective utilization.
The library is distributed under the Apache License, Version 2.0, ensuring a balance between open collaboration and respect for original authorship.

**Contributions and Enhancements:**

DTBLib is open to contributions from the developer community. Enhancements, bug fixes, and adaptations for broader use are all welcome. This collaborative approach is aimed at refining the library and extending its utility to a wider range of applications.

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

For more information, please refer to the [documentation](doc/README.md).

## License

This library is licensed under Apache License 2.0. See the [LICENSE](LICENSE) file for details.

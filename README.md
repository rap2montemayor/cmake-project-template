# cmake-project-template

A super minimal template for cmake projects. Loosely based off of the [Canonical
Project Structure](https://www.open-std.org/jtc1/sc22/wg21/docs/papers/2018/p1204r0.html).

To compile:

```sh
cmake -B build -S . # Optionally, specify a generator using -G
cmake --build build
```

Notes:
- `src` is set as an include directory. Prefer to have another subdirectory
  inside it to implement the canonical inclusion scheme. For example,
  [EnTT](https://github.com/skypjack/entt) does this.
- Both header and source files are meant to be placed in `src`.
- This doesn't prescribe a package manager, so example dependencies in
  `cmake/dependencies` are just retrieved using `FetchContent`.

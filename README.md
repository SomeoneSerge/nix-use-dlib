# nix-use-dlib

Consuming dlib and cmake is easy with Nix

![2022-04-29_17-37](https://user-images.githubusercontent.com/9720532/165982257-c025fe25-f041-45db-bb61-67dbb6b7d020.png)


```bash
❯ echo 'use nix' > .envrc
direnv: error /home/ss/Sources/try-dlib/.envrc is blocked. Run `direnv allow` to approve its content
try-dlib on  master [?] via △

❯ direnv allow
direnv: loading ~/Sources/try-dlib/.envrc
direnv: using nix
direnv: nix-direnv: renewed cache
direnv: export +AR +AS +CC +CMAKE_INCLUDE_PATH +CMAKE_LIBRARY_PATH +CMAKE_PREFIX_PATH <...>
try-dlib on  master [?] via △ v3.22.3 via ❄️  impure (nix-shell)

❯ cmake -B build -S .
-- Configuring done
-- Generating done
-- Build files have been written to: /home/ss/Sources/try-dlib/build
try-dlib on  master [?] via △ v3.22.3 via ❄️  impure (nix-shell) took 4s

❯ cmake --build build
Consolidate compiler generated dependencies of target feed
[100%] Built target feed
try-dlib on  master [?] via △ v3.22.3 via ❄️  impure (nix-shell) took 5s

❯ wget dlib.net/files/shape_predictor_68_face_landmarks.dat.bz2
...
shape_predictor_68_face_landmarks.dat.bz2       100%[===================>]  61.07M  15.7MB/s    in 5.4s

❯ bunzip2 ./shape_predictor_68_face_landmarks.dat.bz2

❯ ./build/feed shape_predictor_68_face_landmarks.dat ./ffhq-example.png
processing image ./ffhq-example.png
Number of faces detected: 1
number of parts: 68
pixel position of first part:  (295, 928)
pixel position of second part: (305, 1116)
Hit enter to process the next image...
```

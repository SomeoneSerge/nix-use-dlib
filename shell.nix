with (import <nixpkgs> { });

mkShell {
  buildInputs = [
    (dlib.override { guiSupport = true; })
    opencv4
  ];
  nativeBuildInputs = [
    cmake
    pkg-config
    patchelf
    bzip2
  ];
}

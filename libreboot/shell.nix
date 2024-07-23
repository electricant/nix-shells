with import <nixpkgs> {}; 

mkShellNoCC {
  buildInputs = with pkgs; [
    gnat # gcc with ada
    m4 flex bison # Generate flashmap descriptor parser
    zlib
    cmake
    python3
    autoconf
    automake
    libtool
    bash
    gettext
    ncurses
    libusb-compat-0_1
    freetype
    unifont
    lvm2
    pkg-config
    openssl
    unar p7zip unzip
    innoextract
    ccache
  ];

  shellHook = ''
    XBMK_THREADS=4
    NIX_LDFLAGS="$NIX_LDFLAGS -lncurses"
    echo 'To build grub succesfully cd into the grub source directory and run:'
    echo -e '\tln -s ${unifont}/share/fonts/unifont.pcf.gz .'
  '';
}

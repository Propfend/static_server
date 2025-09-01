{ 
  stdenv,
  python3,
}:

stdenv.mkDerivation {
  pname = "static_server";
  version = "1.0.0";

  src = ./.;

  buildInputs = [ python3 ];

  installPhase = ''
    mkdir -p $out/bin
    cp $src/main.py $out/bin/static_server
    chmod +x $out/bin/static_serverv
  '';
}

{
  stdenv,
  fetchFromGitHub,
  imlib2,
  xorg
}:

stdenv.mkDerivation rec {
  pname = "icat";
  version = "v0.5";

  src = fetchFromGitHub {
    repo = "${pname}";
    rev = "v0.5";
    owner = "atextor";
    sha256 = "sha256-aiLPVdKSppT/PWPW0Ue475WG61pBLh8OtLuk2/UU3nM=";
  };

  buildInputs = [ imlib2 xorg.libX11 ];

  installPhase = ''
    runHook preInstall
    mkdir -p $out/bin
    cp icat $out/bin
    runHook postInstall
  '';
}

{
  stdenv,
  fetchFromGitHub,
#   imlib2,
#   xorg
}:

stdenv.mkDerivation rec {
  pname = "paddler";
  version = "v2.1.0";

  src = fetchFromGitHub {
    repo = "${pname}";
    rev = "v2.1.0";
    owner = "intentee";
    sha256 = "sha256-aiLPVdKSppT/PWPW0Ue475WG61pBLh8OtLuk2/UU3nM=";
  };

#   buildInputs = [ imlib2 xorg.libX11 ];

#   installPhase = ''
#     runHook preInstall
#     mkdir -p $out/bin
#     cp icat $out/bin
#     runHook postInstall
#   '';
}

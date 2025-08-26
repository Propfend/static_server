{
  stdenv,
  fetchFromGitHub,
}:

stdenv.mkDerivation rec {
  pname = "paddler";
  version = "2.1.0";

  src = fetchFromGitHub {
    repo = "paddlerr";
    rev = "v2.1.0";
    owner = "intentee";
    sha256 = "sha256-1kJjhtlsAkpNB7f6tZEs+dbKd8z7KoNHyDHEJ0tmhnc=";
  };
}

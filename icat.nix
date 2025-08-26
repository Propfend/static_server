{
  stdenv,
  fetchFromGitHub,
}:

stdenv.mkDerivation rec {
  pname = "icat";
  version = "0.5";
  owner = "atextor";

  src = fetchFromGitHub {
    repo = "https://github.com/${owner}/${pname}";
    rev = "v${version}";
    owner = owner;
    sha256 = "";
  };
}

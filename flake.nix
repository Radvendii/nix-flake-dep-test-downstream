{
  description = "A very basic flake";
  inputs.upstream.url = "github:radvendii/nix-flake-dep-test-upstream/27ffa18b5a130873796bb06b8a778b522814774a";
  # inputs.upstream.url = "github:radvendii/nix-flake-dep-test-upstream/57c136eb8aacc972553bae8562faf6ac277d5435";
  outputs = { self, nixpkgs, upstream }: {
    packages.x86_64-linux.default = upstream.packages.x86_64-linux.default;
  };
}

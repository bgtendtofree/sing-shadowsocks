# sing-shadowsocks

Lightweight and efficient shadowsocks implementation with sing.

## slimproxy fork

The `slimproxy-udpnat-capacity` branch (base upstream `65740e0f0e3ea0d78beb9f3972ba42a75a6cd160`)
adds `shadowaead.NewServiceWithCapacity`, which needs the paired
[`bgtendtofree/sing`](https://github.com/bgtendtofree/sing) `slimproxy-udpnat-capacity` revision. This module pins that
revision in `go.mod` so its own `go test -mod=readonly -race -count=1 ./...` works independently. Consumers must keep
both `replace` directives in their own module; this repository's `replace` does not propagate. The branch CI workflow
runs `go vet ./...` and the race test suite.

module github.com/sagernet/sing-shadowsocks

go 1.25.0

require (
	github.com/sagernet/sing v0.6.10
	golang.org/x/crypto v0.23.0
	lukechampine.com/blake3 v1.3.0
)

require (
	github.com/klauspost/cpuid/v2 v2.0.12 // indirect
	golang.org/x/sys v0.47.0 // indirect
)

// Paired slimproxy-udpnat-capacity fork revision, also pinned by slimproxy.
// Consumers still need their own replace; this one does not propagate.
replace github.com/sagernet/sing => github.com/bgtendtofree/sing v0.0.0-20261026195125-c3669c62007d

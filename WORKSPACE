load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load(":versions.bzl", "versions")

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "2b1641428dff9018f9e85c0384f03ec6c10660d935b750e3fa1492a281a53b0f",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.29.0/rules_go-v0.29.0.zip",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.29.0/rules_go-v0.29.0.zip",
    ],
)
http_archive(
    name = "bazel_skylib",
    patch_args = ["-p1"],
    sha256 = "c6966ec828da198c5d9adbaa94c05e3a1c7f21bd012a0b29ba8ddbccb2c93b0d",
    urls = [
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.1.1/bazel-skylib-1.1.1.tar.gz",
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.1.1/bazel-skylib-1.1.1.tar.gz",
    ],
)

http_archive(
    name = "bazel_gazelle",
    sha256 = "1e90995b487a5b4aa0440ac61458a3bf487d9da93c7592953d4361deb755e3b5",
    strip_prefix = "bazel-gazelle-%s" % versions.gazelle,
    urls = [
        "https://github.com/bazelbuild/bazel-gazelle/archive/%s.zip" % versions.gazelle,
    ],
    patch_args = ["-p1"],
    patches = [
        "//rt/fourth_party/gazelle:includes.patch",
    ],
)
http_archive(
    name = "build_stack_rules_proto",
    patch_args = ["-p1"],
    patches = ["//rt/fourth_party:stackb_rules_proto.hack_for_issue_221.patch"],
    sha256 = "2f1d004c0415103437a73a67127ec7593893ba4231092a071c17da370e591a43",
    strip_prefix = "rules_proto-" + versions.stackb_rules_proto,
    urls = ["https://github.com/stackb/rules_proto/archive/%s.tar.gz" % versions.stackb_rules_proto],
)

http_archive(
    name = "com_google_protobuf",
    sha256 = "d0f5f605d0d656007ce6c8b5a82df3037e1d8fe8b121ed42e536f569dec16113",
    strip_prefix = "protobuf-{}".format(versions.protobuf),
    urls = ["https://github.com/protocolbuffers/protobuf/archive/v{}.tar.gz".format(versions.protobuf)],
)

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")
load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()
go_register_toolchains(version = "1.16")
gazelle_dependencies()

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")
protobuf_deps()

load("@build_stack_rules_proto//:go_deps.bzl", "gazelle_protobuf_extension_go_deps")

register_toolchains("@build_stack_rules_proto//toolchain:standard")

gazelle_protobuf_extension_go_deps()

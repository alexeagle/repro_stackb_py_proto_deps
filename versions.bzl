"Define versions so they don't need to be hunted down later"

versions = struct(
    protobuf = "3.14.0",
    # Pick up per-file mode for proto_library generation from
    # https://github.com/bazelbuild/bazel-gazelle/pull/1033
    # as well as #1095
    # TODO: update to next release following v0.24.0
    gazelle = "9beec7e51be76b83a8e613b36801b028608f3d1e",
    grpc = "1.24.2",
    gflags = "2.2.2",
    glog = "0.4.0",
    gtest = "1.10.0",
    # Maven versions
    log4j = "2.16.0",
    spring_boot = "2.2.3.RELEASE",
    # Rules nodejs
    rules_nodejs = "4.0.0",
    stackb_rules_proto = "4f9e9a917a16bddeaf4ecb97e437f50b3bff09d1",
    yarn = "3.1.0",  # this should be kept in lock-step with the yarnPath version in //rt/build/bazel/.yarnrc.yml
    rules_sass = "1.39.0",
)

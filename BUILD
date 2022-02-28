load("@bazel_gazelle//:def.bzl", "DEFAULT_LANGUAGES", "gazelle", "gazelle_binary")

# gazelle:proto file
# gazelle:go_generate_proto false

# gazelle:proto_plugin python implementation builtin:python

# gazelle:proto_rule proto_compile implementation stackb:rules_proto:proto_compile
# gazelle:proto_rule proto_python_library implementation stackb:rules_proto:proto_py_library
# gazelle:proto_rule proto_python_library deps @com_google_protobuf//:protobuf_python
# gazelle:proto_rule proto_python_library visibility //visibility:public

# gazelle:proto_language python plugin python
# gazelle:proto_language python rule proto_compile
# gazelle:proto_language python rule proto_python_library

# gazelle:prefix


gazelle_binary(
    name = "gazelle_binary",
    languages = DEFAULT_LANGUAGES + [
        "@build_stack_rules_proto//language/protobuf",
    ],
)

gazelle(
    name = "gazelle",
    args = ["rt"],
    command = "update",
    gazelle = ":gazelle_binary",
)
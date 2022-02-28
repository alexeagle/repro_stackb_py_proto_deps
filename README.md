https://github.com/stackb/rules_proto/pull/210 added the `deps` to generated proto_py_library.

https://github.com/stackb/rules_proto/commit/4f9e9a917a16bddeaf4ecb97e437f50b3bff09d1 shows the effect this should have.

However, in this repro we see that although the generated `proto_library` target has the right 1p dependency

```shell
buildozer 'print deps' //rt/proto/libs/libprotos/arm_control_module:arm_control_config_proto
[//rt/proto/libs/libprotos/bdprotos/robot:RobotConfig_proto]
```

the generated `proto_py_library` does not:

```shell
buildozer 'print deps' //rt/proto/libs/libprotos/arm_control_module:arm_control_config_py_library
[@com_google_protobuf//:protobuf_python]
```

def _impl(ctx):
    print(dir(ctx.actions))
    print("Target {}: attr number {}".format(ctx.label, ctx.attr.number))
    print(ctx.attr.number)

printer = rule(
    implementation = _impl,
    attrs = {
        "number": attr.int(default = 1),
    },
)

def _impl_with_label(ctx):
    print(ctx.attr.mylabel)

printer_with_label = rule(
    implementation = _impl_with_label,
    attrs = {
        "mylabel": attr.label(),
    },
)
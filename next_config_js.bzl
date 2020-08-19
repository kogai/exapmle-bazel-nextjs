# https://docs.bazel.build/versions/master/skylark/lib/ctx.html

def _next_config_js_impl(ctx):
    out = ctx.actions.declare_file(ctx.label.name + ".js")
    ctx.actions.expand_template(
        output = out,
        template = ctx.file.template,
        substitutions = {"{OUT_DIR}": ctx.bin_dir.path},
    )
    return [DefaultInfo(files = depset([out]))]

next_config_js = rule(
    implementation = _next_config_js_impl,
    attrs = {
        "template": attr.label(
            allow_single_file = [".js.tpl"],
            mandatory = True,
        ),
    },
)

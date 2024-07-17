PROJECT = get_post
PROJECT_DESCRIPTION = New project
PROJECT_VERSION = 0.1.0

BUILD_DEPS += relx

DEPS = cowboy
dep_cowboy_commit = master

include erlang.mk

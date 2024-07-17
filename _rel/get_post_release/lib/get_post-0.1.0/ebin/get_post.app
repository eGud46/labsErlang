{application, 'get_post', [
	{description, "New project"},
	{vsn, "0.1.0"},
	{modules, ['get_post_app','get_post_sup','simple_handler']},
	{registered, [get_post_sup]},
	{applications, [kernel,stdlib,cowboy]},
	{optional_applications, []},
	{mod, {get_post_app, []}},
	{env, []}
]}.
%% @doc REST time handler.
-module(simple_handler).

%% Webmachine API
-export([
         init/2
        ]).


init(Req, Opts) ->
    Method = cowboy_req:method(Req),
    case Method of
        <<"PUT">> ->
            {ok, Body, Req1} = cowboy_req:read_body(Req),
            file:write_file("C:/msys64/home/Eugene/Contacts.json", Body),
            cowboy_req:reply(200, #{<<"content-type">> => <<"application/json">>}, Body, Req1);
        <<"GET">> ->
            {ok, Body, Req1} = cowboy_req:read_body(Req),
            Body,
            {ok, Data} = file:read_file("C:/msys64/home/Eugene/Contacts.json"),
            cowboy_req:reply(200, #{<<"content-type">> => <<"application/json">>}, Data, Req1)
        end,
    {ok, Req, Opts}.
-module(rabbit_exchange_type_global_fanout).
-include_lib("rabbit_common/include/rabbit.hrl").

-behaviour(rabbit_exchange_type).

-export([description/0, route/2]).
-export([validate/1, create/2, recover/2, delete/3,
         add_binding/3, remove_bindings/3, assert_args_equivalence/2]).

-include_lib("rabbit_common/include/rabbit_exchange_type_spec.hrl").

description() ->
    [{name, <<"global-fanout">>},
     {description, <<"Fanouts messages to every queue in the broker.">>}].

route(_, _) ->
    rabbit_router:match_routing_key('_', ['_']).

validate(_X) -> ok.
create(_Tx, _X) -> ok.
recover(_X, _Bs) -> ok.
delete(_Tx, _X, _Bs) -> ok.
add_binding(_Tx, _X, _B) -> ok.
remove_bindings(_Tx, _X, _Bs) -> ok.
assert_args_equivalence(X, Args) ->
    rabbit_exchange:assert_args_equivalence(X, Args).

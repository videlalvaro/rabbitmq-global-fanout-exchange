-module(rabbit_global_fanout_plugin).

-rabbit_boot_step({?MODULE,
                   [{description, "global fanout exchange type"},
                    {mfa, {rabbit_registry, register, [exchange, <<"x-global-fanout">>, rabbit_exchange_type_global_fanout]}},
                    {requires, rabbit_registry},
                    {enables, exchange_recovery}]}).
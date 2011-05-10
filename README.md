# RabbitMQ Global Fanout Exchange #

Fanouts a message to **every queue in the broker** no matter the bindings. Created upon request from [@michaelklishin](http://twitter.com/#!/michaelklishin) during a fun chat at #rabbitmq on Freenode.

**Use with care!** It was deveoped in under 30 minutes.

Exchange Type: `x-global-fanout`

## Installation ##

    git clone git://github.com/videlalvaro/rabbitmq-global-fanout-exchange.git
    cd rabbitmq-global-fanout-exchange
    make package
    cp dist/*.ez $RABBITMQ_HOME/plugins

## License ##

See LICENSE.md

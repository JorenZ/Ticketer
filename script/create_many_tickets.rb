for i in 1..5 do
  Ticket.create( topic: "Management", body: "Automatically created ticket #{i}" )
  Ticket.create( topic: "Finance", body: "Automatically created ticket #{i}" )
  Ticket.create( topic: "Afsprakenbureau", body: "Automatically created ticket #{i}" )
end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    b:migrate[1Pcreatemigrate[3Pdropils runner ~/Documents/Ruby_projects/tticketer/script/create_many_tickets.rb [A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[Cdbconsole[K
[K[A[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Crunner ~/Documents/Ruby_projects/tticketer/script/create_many_tickets.rb 
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/railties-3.2.13/lib/rails/commands/runner.rb:51:in `eval': /home/joren/Documents/Ruby_projects/ticketer/script/create_many_tickets.rb:1: syntax error, unexpected ':', expecting $end (SyntaxError)
Script started on dinsdag, 2014-11-11, 16:21
                                          ^
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/railties-3.2.13/lib/rails/commands/runner.rb:51:in `<top (required)>'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/railties-3.2.13/lib/rails/commands.rb:64:in `require'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/railties-3.2.13/lib/rails/commands.rb:64:in `<top (required)>'
	from script/rails:6:in `require'
	from script/rails:6:in `<main>'
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ rails runner ~/Documents/Ruby_projects/tticketer/script/create_many_tickets.rb 
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ rails generate migration AddDefaultStat usToTickets
[1m[37m      invoke[0m  active_record
[1m[32m      create[0m    db/migrate/20141111160806_add_default_status_to_tickets.rb
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ rake db:migrate
==  AddDefaultStatusToTickets: migrating ======================================
-- change_column(:tickets, :status, {:default=>"open"})
rake aborted!
StandardError: An error has occurred, this and all later migrations canceled:

undefined method `to_sym' for {:default=>"open"}:Hash/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/connection_adapters/abstract/schema_statements.rb:473:in `type_to_sql'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/connection_adapters/postgresql_adapter.rb:1095:in `type_to_sql'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/connection_adapters/postgresql_adapter.rb:1030:in `change_column'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/migration.rb:466:in `block in method_missing'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/migration.rb:438:in `block in say_with_time'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/migration.rb:438:in `say_with_time'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/migration.rb:458:in `method_missing'
/home/joren/Documents/Ruby_projects/ticketer/db/migrate/20141111160806_add_default_status_to_tickets.rb:3:in `change'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/migration.rb:407:in `block (2 levels) in migrate'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/migration.rb:407:in `block in migrate'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/connection_adapters/abstract/connection_pool.rb:129:in `with_connection'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/migration.rb:389:in `migrate'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/migration.rb:528:in `migrate'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/migration.rb:720:in `block (2 levels) in migrate'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/migration.rb:775:in `call'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/migration.rb:775:in `block in ddl_transaction'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/connection_adapters/abstract/database_statements.rb:192:in `transaction'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/transactions.rb:208:in `transaction'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/migration.rb:775:in `ddl_transaction'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/pg_power-1.3.1/lib/pg_power/create_index_concurrently.rb:201:in `ddl_transaction_with_postponed_queries'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/migration.rb:719:in `block in migrate'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/migration.rb:700:in `each'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/migration.rb:700:in `migrate'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/migration.rb:570:in `up'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/migration.rb:551:in `migrate'
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/activerecord-3.2.13/lib/active_record/railties/databases.rake:193:in `block (2 levels) in <top (required)>'
/home/joren/.rvm/gems/ruby-1.9.3-p547/bin/ruby_executable_hooks:15:in `eval'
/home/joren/.rvm/gems/ruby-1.9.3-p547/bin/ruby_executable_hooks:15:in `<main>'
Tasks: TOP => db:migrate
(See full trace by running task with --trace)
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ rake db:migrate
==  AddDefaultStatusToTickets: migrating ======================================
-- change_column(:tickets, :status, :text, {:default=>"open"})
   -> 0.0033s
==  AddDefaultStatusToTickets: migrated (0.0035s) =============================

]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ rake db:migrateils generate migration AddDefaultStatuusToTickets[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[24Pke db:migrate
[K[A[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[K[K[K[K[K[K[K[K[K[K[K[K[K[K[Krails s[Krspec spec[1P[1P[1P[1P[1P[1@r[1@a[1@i[1@l[1@s
Error: Command not recognized
Usage: rails COMMAND [ARGS]

The most common rails commands are:
 generate    Generate new code (short-cut alias: "g")
 console     Start the Rails console (short-cut alias: "c")
 server      Start the Rails server (short-cut alias: "s")
 dbconsole   Start a console for the database specified in config/database.yml
             (short-cut alias: "db")
 new         Create a new Rails application. "rails new my_app" creates a
             new application called MyApp in "./my_app"

In addition to those, there are:
 application  Generate the Rails application code
 destroy      Undo code generated with "generate" (short-cut alias: "d")
 benchmarker  See how fast a piece of code runs
 profiler     Get profile information from a piece of code
 plugin       Install a plugin
 runner       Run a piece of code in the application environment (short-cut alias: "r")

All commands can be run with -h (or --help) for more information.
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ rspec spec


Finished in 0.09879 seconds (files took 8.31 seconds to load)
[32m0 examples, 0 failures[0m
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/factory_girl-4.5.0/lib/factory_girl/linter.rb:14:in `lint!': The following factories are invalid: (FactoryGirl::InvalidFactoryError)

* ticket - PG::UndefinedTable: ERROR:  relation "tickets" does not exist
LINE 5:              WHERE a.attrelid = '"tickets"'::regclass
                                        ^
:             SELECT a.attname, format_type(a.atttypid, a.atttypmod),
                     pg_get_expr(d.adbin, d.adrelid), a.attnotnull, a.atttypid, a.atttypmod
              FROM pg_attribute a LEFT JOIN pg_attrdef d
                ON a.attrelid = d.adrelid AND a.attnum = d.adnum
             WHERE a.attrelid = '"tickets"'::regclass
               AND a.attnum > 0 AND NOT a.attisdropped
             ORDER BY a.attnum
 (ActiveRecord::StatementInvalid)
* user - PG::InFailedSqlTransaction: ERROR:  current transaction is aborted, commands ignored until end of transaction block
:             SELECT a.attname, format_type(a.atttypid, a.atttypmod),
                     pg_get_expr(d.adbin, d.adrelid), a.attnotnull, a.atttypid, a.atttypmod
              FROM pg_attribute a LEFT JOIN pg_attrdef d
                ON a.attrelid = d.adrelid AND a.attnum = d.adnum
             WHERE a.attrelid = '"users"'::regclass
               AND a.attnum > 0 AND NOT a.attisdropped
             ORDER BY a.attnum
 (ActiveRecord::StatementInvalid)
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/factory_girl-4.5.0/lib/factory_girl/linter.rb:4:in `lint!'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/factory_girl-4.5.0/lib/factory_girl.rb:59:in `lint'
	from /home/joren/Documents/Ruby_projects/ticketer/spec/rails_helper.rb:44:in `block (2 levels) in <top (required)>'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/example.rb:294:in `instance_exec'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/example.rb:294:in `instance_exec'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/hooks.rb:349:in `run'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/hooks.rb:410:in `block in run'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/hooks.rb:410:in `each'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/hooks.rb:410:in `run'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/hooks.rb:485:in `run'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/runner.rb:111:in `block in run_specs'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/reporter.rb:54:in `report'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/runner.rb:108:in `run_specs'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/runner.rb:86:in `run'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/runner.rb:70:in `run'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/runner.rb:38:in `invoke'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/exe/rspec:4:in `<top (required)>'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/bin/rspec:23:in `load'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/bin/rspec:23:in `<main>'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/bin/ruby_executable_hooks:15:in `eval'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/bin/ruby_executable_hooks:15:in `<main>'
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ git add .
warning: You ran 'git add' with neither '-A (--all)' or '--ignore-removal',
whose behaviour will change in Git 2.0 with respect to paths you removed.
Paths like 'app/views/tickets/_ticket_actions.html.erb' that are
removed from your working tree are ignored with this version of Git.

* 'git add --ignore-removal <pathspec>', which is the current default,
  ignores paths you removed from lias: "c")
 server      Start the Rails server (short-cut alias: "s")
 dbconsole   Start a console for the database specified in config/database.yml
             (short-cut alias: "db")
 new         Create a new Rails application. "rails new my_app" creates a
             new application called MyApp in "./my_app"

In addition to those, there are:
 application  Generate the Rails application code
 destroy      Undo code generated with "generate" (short-cut alias: "d")
 benchmarker  See how fast a piece of code runs
 profiler     Get profile information from a piece of code
 plugin       Install a plugin
 runner       Run a piece of code in the application environment (short-cut alias: "r")

All commands can be run with -h (or --help) for more information.
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ rspec spec


Finished in 0.09879 seconds (files took 8.31 seconds to load)
[32m0 examples, 0 failures[0m
/home/joren/.rvm/gems/ruby-1.9.3-p547/gems/factory_girl-4.5.0/lib/factory_girl/linter.rb:14:in `lint!': The following factories are invalid: (FactoryGirl::InvalidFactoryError)

* ticket - PG::UndefinedTable: ERROR:  relation "tickets" does not exist
LINE 5:              WHERE a.attrelid = '"tickets"'::regclass
                                        ^
:             SELECT a.attname, format_type(a.atttypid, a.atttypmod),
                     pg_get_expr(d.adbin, d.adrelid), a.attnotnull, a.atttypid, a.atttypmod
              FROM pg_attribute a LEFT JOIN pg_attrdef d
                ON a.attrelid = d.adrelid AND a.attnum = d.adnum
             WHERE a.attrelid = '"tickets"'::regclass
               AND a.attnum > 0 AND NOT a.attisdropped
             ORDER BY a.attnum
 (ActiveRecord::StatementInvalid)
* user - PG::InFailedSqlTransaction: ERROR:  current transaction is aborted, commands ignored until end of transaction block
:             SELECT a.attname, format_type(a.atttypid, a.atttypmod),
                     pg_get_expr(d.adbin, d.adrelid), a.attnotnull, a.atttypid, a.atttypmod
              FROM pg_attribute a LEFT JOIN pg_attrdef d
                ON a.attrelid = d.adrelid AND a.attnum = d.adnum
             WHERE a.attrelid = '"users"'::regclass
               AND a.attnum > 0 AND NOT a.attisdropped
             ORDER BY a.attnum
 (ActiveRecord::StatementInvalid)
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/factory_girl-4.5.0/lib/factory_girl/linter.rb:4:in `lint!'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/factory_girl-4.5.0/lib/factory_girl.rb:59:in `lint'
	from /home/joren/Documents/Ruby_projects/ticketer/spec/rails_helper.rb:44:in `block (2 levels) in <top (required)>'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/example.rb:294:in `instance_exec'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/example.rb:294:in `instance_exec'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/hooks.rb:349:in `run'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/hooks.rb:410:in `block in run'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/hooks.rb:410:in `each'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/hooks.rb:410:in `run'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/hooks.rb:485:in `run'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/runner.rb:111:in `block in run_specs'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/reporter.rb:54:in `report'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/runner.rb:108:in `run_specs'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/runner.rb:86:in `run'
	from /home/joren/.rvm/gems/ruby-1.9.3-p547/gems/rspec-core-3.0.4/lib/rspec/core/runner.rb:70:in `run'
	from /home/joren/.rvm/g
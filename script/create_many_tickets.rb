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
  ignores paths you removed from your working tree.

* 'git add --all <pathspec>' will let you also record the removals.

Run 'git status' to check the paths you removed from your working tree.

]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ git add --all
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ git stst[K[Katus
On branch ticket-state-machine
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	[32mmodified:   Gemfile[m
	[32mmodified:   Gemfile.lock[m
	[32mmodified:   app/controllers/overview_controller.rb[m
	[32mmodified:   app/controllers/tickets_controller.rb[m
	[32mmodified:   app/models/ticket.rb[m
	[32mmodified:   app/views/overview/index.html.erb[m
	[32mdeleted:    app/views/tickets/_ticket_actions.html.erb[m
	[32mmodified:   app/views/tickets/show.html.erb[m
	[32mmodified:   db/migrate/20140814144935_create_tickets.rb[m
	[32mdeleted:    db/migrate/20140815090750_add_removed_column_to_ticket.rb[m
	[32mdeleted:    db/migrate/20140815091018_add_programmer_id_to_ticket.rb[m
	[32mdeleted:    db/migrate/20141017150611_rename_ticket_programmer_column.rb[m
	[32mnew file:   db/migrate/20141111160806_add_default_status_to_tickets.rb[m
	[32mmodified:   db/schema.rb[m
	[32mmodified:   script/create_many_tickets.rb[m

]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ git commit -m " [KProgress on state machin e" 
[ticket-state-machine 67206ce] Progress on state machine
 15 files changed, 68 insertions(+), 109 deletions(-)
 delete mode 100644 app/views/tickets/_ticket_actions.html.erb
 delete mode 100644 db/migrate/20140815090750_add_removed_column_to_ticket.rb
 delete mode 100644 db/migrate/20140815091018_add_programmer_id_to_ticket.rb
 delete mode 100644 db/migrate/20141017150611_rename_ticket_programmer_column.rb
 create mode 100644 db/migrate/20141111160806_add_default_status_to_tickets.rb
 rewrite script/create_many_tickets.rb (100%)
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ git checkout git push
error: pathspec 'git' did not match any file(s) known to git.
error: pathspec 'push' did not match any file(s) known to git.
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ git push
fatal: The current branch ticket-state-machine has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin ticket-state-machine

]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ git publish
git: 'publish' is not a git command. See 'git --help'.
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ git push --set-upstream ogirin[K[K[K[K[Krigin ticket-s tate-machine
Counting objects: 104, done.
Delta compression using up to 2 threads.
Compressing objects:   4% (1/21)   Compressing objects:   9% (2/21)   Compressing objects:  14% (3/21)   Compressing objects:  19% (4/21)   Compressing objects:  23% (5/21)   Compressing objects:  28% (6/21)   Compressing objects:  33% (7/21)   Compressing objects:  38% (8/21)   Compressing objects:  42% (9/21)   Compressing objects:  47% (10/21)   Compressing objects:  52% (11/21)   Compressing objects:  57% (12/21)   Compressing objects:  61% (13/21)   Compressing objects:  66% (14/21)   Compressing objects:  71% (15/21)   Compressing objects:  76% (16/21)   Compressing objects:  80% (17/21)   Compressing objects:  85% (18/21)   Compressing objects:  90% (19/21)   Compressing objects:  95% (20/21)   Compressing objects: 100% (21/21)   Compressing objects: 100% (21/21), done.
Writing objects:   4% (1/22)   Writing objects:   9% (2/22)   Writing objects:  13% (3/22)   Writing objects:  18% (4/22)   Writing objects:  22% (5/22)   Writing objects:  27% (6/22)   Writing objects:  31% (7/22)   Writing objects:  36% (8/22)   Writing objects:  40% (9/22)   Writing objects:  45% (10/22)   Writing objects:  50% (11/22)   Writing objects:  54% (12/22)   Writing objects:  59% (13/22)   Writing objects:  63% (14/22)   Writing objects:  68% (15/22)   Writing objects:  72% (16/22)   Writing objects:  77% (17/22)   Writing objects:  81% (18/22)   Writing objects:  86% (19/22)   Writing objects:  90% (20/22)   Writing objects:  95% (21/22)   Writing objects: 100% (22/22)   Writing objects: 100% (22/22), 5.71 KiB | 0 bytes/s, done.
Total 22 (delta 11), reused 0 (delta 0)
To git@github.com:JorenZ/Ticketer.git
 * [new branch]      ticket-state-machine -> ticket-state-machine
Branch ticket-state-machine set up to track remote branch ticket-state-machine from origin.
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ git push --set-upstream origin ticket-sttate-machine[A[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C ticket-sta[1Pte-machine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C ticket-stat[1Pe-machine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C ticket-state[1P-machine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C ticket-state-[1Pmachine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C ticket-state-m[1Pachine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C ticket-state-ma[1Pchine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cm ticket-state-machine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Ca ticket-state-machine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cs ticket-state-machine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Ct ticket-state-machine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Ce ticket-state-machine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cr ticket-state-machine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C

fatal: 'master' does not appear to be a git repository
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ git push --set-upstream master ticket-sttate-machine[A[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Caster ticket-sta[1Pte-machine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cster ticket-stat[1Pe-machine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cter ticket-state[1P-machine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cer ticket-state-[1Pmachine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cr ticket-state-m[1Pachine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C ticket-state-ma[1Pchine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cticket-state-mac[1Phine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cicket-state-mach[1Pine[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Ccket-state-machi[1Pne[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cket-state-machin[1Pe[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cet-state-machine[K[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Ct-state-machine [K[A[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[1P-state-machine
[K[A[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[1Pstate-machine[1Ptate-machine[1Pate-machine[1Pte-machine[1Pe-machine[1P-machine[1Pmachine[1Pachine[1Pchine[1Phine[1Pine[1Pne[1Pe[Korigin master
Branch master set up to track remote branch master from origin.
Everything up-to-date
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ got c[K[K[K[Kit checkout ticket-[K[K[K[K[K[K[Kticket-state-machine
M	script/create_many_tickets.rb
Already on 'ticket-state-machine'
Your branch is up-to-date with 'origin/ticket-state-machine'.
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ git checkout master
error: Your local changes to the following files would be overwritten by checkout:
	script/create_many_tickets.rb
Please, commit your changes or stash them before you can switch branches.
Aborting
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ git status
On branch ticket-state-machine
Your branch is up-to-date with 'origin/ticket-state-machine'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	[31mmodified:   script/create_many_tickets.rb[m

no changes added to commit (use "git add" and/or "git commit -a")
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ git commit -a
[?1049h[?1h=[2;1H▽[6n[1;1H  [1;1H[1;30r[?12;25h[?12l[?25h[27m[m[34m[40m[H[2J[?25l[30;1H"~/Documents/Ruby_projects/ticketer/.git/COMMIT_EDITMSG" 9L, 308C[>c[1;1H[1m[32m[40m  1 
  2 [m[34m[40m[1m[32m# Please enter the commit message for your changes. Lines starting[m[34m[40m
[1m[32m[40m  3 [m[34m[40m[1m[32m# with '#' will be ignored, and an empty message aborts the commit.[m[34m[40m
[1m[32m[40m  4 [m[34m[40m[1m[32m# On branch [m[34m[40m[31mticket-state-machine[m[34m[40m
[1m[32m[40m  5 [m[34m[40m[1m[32m# Your branch is up-to-date with '[m[34m[40m[31morigin/ticket-state-machine[m[34m[40m[1m[32m'.[m[34m[40m
[1m[32m[40m  6 [m[34m[40m[1m[32m#[m[34m[40m
[1m[32m[40m  7 [m[34m[40m[1m[32m# [m[34m[40m[1m[31mChanges to be committed:[m[34m[40m
[1m[32m[40m  8 [m[34m[40m[1m[32m#       [m[34m[40m[33mmodified[m[34m[40m[1m[32m: [m[34m[40m[36m  script/create_many_tickets.rb[m[34m[40m
[1m[32m[40m  9 [m[34m[40m[1m[32m#
~                                                                                                  [11;1H~                                                                                                  [12;1H~                                                                                                  [13;1H~                                                                                                  [14;1H~                                                                                                  [15;1H~                                                                                                  [16;1H~                                                                                                  [17;1H~                                                                                                  [18;1H~                                                                                                  [19;1H~                                                                                                  [20;1H~                                                                                                  [21;1H~                                                                                                  [22;1H~                                                                                                  [23;1H~                                                                                                  [24;1H~                                                                   [C[C[C[C[C[C[C[C[C[C[Cet-state-machine[K[A]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ [C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Ct-state-machine [K[A[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[1P-state-machine
[K[A[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[1Pstate-machine[1Ptate-machine[1Pate-machine[1Pte-machine[1Pe-machine[1P-machine[1Pmachine[1Pachine[1Pchine[1Phine[1Pine[1Pne[1Pe[Korigin master
Branch master set up to track remote branch master from origin.
Everything up-to-date
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ got c[K[K[K[Kit checkout ticket-[K[K[K[K[K[K[Kticket-state-machine
M	script/create_many_tickets.rb
Already on 'ticket-state-machine'
Your branch is up-to-date with 'origin/ticket-state-machine'.
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ git checkout master
error: Your local changes to the following files would be overwritten by checkout:
	script/create_many_tickets.rb
Please, commit your changes or stash them before you can switch branches.
Aborting
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ git status
On branch ticket-state-machine
Your branch is up-to-date with 'origin/ticket-state-machine'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	[31mmodified:   script/create_many_tickets.rb[m

no changes added to commit (use "git add" and/or "git commit -a")
]0;joren@joren-Aspire-7735: ~/Documents/Ruby_projects/ticketerjoren@joren-Aspire-7735:~/Documents/Ruby_projects/ticketer$ git commit -a
[?1049h[?1h=[2;1H▽[6n[1;1H  [1;1H[1;30r[?12;25h[?12l[?25h[27m[m[34m[40m[H[2J[?25l[30;1H"~/Documents/Ruby_projects/ticketer/.git/COMMIT_EDITMSG" 9L, 308C[>c[1;1H[1m[32m[40m  1 
  2 [m[34m[40m[1m[32m# Please enter the commit message for your changes. Lines starting[m[34m[40m
[1m[32m[40m  3 [m[34m[40m[1m[32m# with '#' will be ignored, and an empty message aborts the commit.[m[34m[40m
[1m[32m[40m  4 [m[34m[40m[1m[32m# On branch [m[34m[40m[31mticket-state-machine[m[34m[40m
[1m[32m[40m  5 [m[34m[40m[1m[32m# Your branch is up-to-date with '[m[34m[40m[31morigin/ticket-state-machine[m[34m[40m[1m[32m'.[m[34m[40m
[1m[32m[40m  6 [m[34m[40m[1m[32m#[m[34m[40m
[1m[32m[40m  7 [m[34m[40m[1m[32m# [m[34m[40m[1m[31mChanges to be committed:[m[34m[40m
[1m[32m[40m  8 [m[34m[40m[1m[32m#       [m[34m[40m[33mmodified[m[34m[40m[1m[32m: [m[34m[40m[36m  script/create_many_tickets.rb[m[34m[40m
[1m[32m[40m  9 [m[34m[40m[1m[32m#
~                                                                                                  [11;1H~                                                                                                  [12;1H~                                                                                                  [13;1H~                                                                                                  [14;1H~                                                                                                  [15;1
{application,nerves_ssdp_server,
             [{registered,[]},
              {description,"Client for Simple Service Discovery Protocol"},
              {vsn,"0.2.1"},
              {modules,['Elixir.Nerves.SSDPServer',
                        'Elixir.Nerves.SSDPServer.Messages',
                        'Elixir.Nerves.SSDPServer.Server']},
              {applications,[kernel,stdlib,elixir,logger]},
              {mod,{'Elixir.Nerves.SSDPServer',[]}}]}.
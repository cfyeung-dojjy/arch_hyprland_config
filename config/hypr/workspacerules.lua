require("programs")

for i = 1,10 do
  hl.workspace_rule({ workspace = i, monitor = main_monitor, default = (i == 1) })
end

for i = 11,20 do
  hl.workspace_rule({ workspace = i, monitor = left_monitor, default = (i == 11) })
end

function k ()
  io.popen('echo k >> out') 
  
end

function lfetch ()
  dofile('lfetch.lua')
end

function name ()
  dofile('osname.lua')
end

function help ()
  dofile('help')
end

function battery ()
  percent = io.popen('cat /sys/class/power_supply/BAT1/capacity'):read('*l')
  print(percent)
  state = io.popen('cat /sys/class/power_supply/BAT1/status'):read('*l')
  print(state)
end
--function subshell ()
	--sh = io.popen('sh'):read('*l')
    --print(sh)
--end

print("lsh -  type \"help\" for a list of commands press Ctrl+C to exit")
while true do
  a = io.read()
  if a == "k" then k()
  end

  if a == "lfetch" then lfetch()
  end

  if a == "name" then name()
  end

  if a == "help" then help()
  end
  
  if a == "pwr" then battery()
  end

  if a == "h" then io.popen('echo h >> out')
  end
end

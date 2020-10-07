lgi = require 'lgi' 
sqlite = require 'lsqlite3'

gtk = lgi.Gtk
gtk.init() 

bld = gtk.Builder() 
bld:add_from_file('lab-03.glade') 

ui = bld.objects

opt={ui.A, ui.B, ui.C, ui.D}

function update()
  x=0
  y=0
  if ui.X.active==true then x=1 end
  if ui.Y.active==true then y=1 end
  
  v=x+y*2
  opt[v+1].active=true
  ui.val.label=v
end

function ui.X:on_clicked(...)
  update()
end

function ui.Y:on_clicked(...)
  update()
end

ui.wnd.title = 'lab-03' 
ui.wnd.on_destroy = gtk.main_quit
ui.wnd:show_all()
gtk.main()


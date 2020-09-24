lib = require 'lgi'
gtk = lib.Gtk

gtk.init()
bld = gtk.Builder()
bld:add_from_file('lab-02.glade')
ui = bld.objects

function ui.add:on_clicked(...)
a = tonumber(ui.labA.text)
b = tonumber(ui.labB.text)
ui.resl.label = a + b
end

function ui.sub:on_clicked(...)
a = tonumber(ui.labA.text)
b = tonumber(ui.labB.text)
ui.resl.label = a - b
end

function ui.mul:on_clicked(...)
a = tonumber(ui.labA.text)
b = tonumber(ui.labB.text)
ui.resl.label = a * b
end

function ui.div:on_clicked(...)
a = tonumber(ui.labA.text)
b = tonumber(ui.labB.text)
ui.resl.label = a / b
end

ui.windows.on_destroy = gtk.main_quit
ui.windows:show_all()

gtk.main()

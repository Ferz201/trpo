#!/usr/bin/lua5.3

lib = require 'lgi'

gtk = lib.Gtk
pixbuf=lib.GdkPixbuf.Pixbuf

gtk.init()

bld = gtk.Builder()
bld:add_from_file('lab-04.glade')

ui = bld.objects

function ui.ID_add:on_clicked(...)
name = ui.ID_name.text
value = tonumber(ui.ID_value.text)

px=pixbuf.new_from_file('img-apple.png')


i = ui.listst:append()
ui.listst[i] = {[1] = name, [2] = value, [3] = px}
end

rdr_tx = gtk.CellRendererText {}
rdr_px = gtk.CellRendererPixbuf {}

c1 = gtk.TreeViewColumn {title = 'NAME' ,{rdr_tx,{text = 1}} }
c2 = gtk.TreeViewColumn {title = 'Value' ,{rdr_tx,{text = 2}} }
c3 = gtk.TreeViewColumn {title = 'IMAGE' ,{rdr_px,{pixbuf = 3}} }

ui.ID_view:append_column(c1)
ui.ID_view:append_column(c2)
ui.ID_view:append_column(c3)

ui.win.on_destroy = gtk.main_quit
ui.win:show_all()

gtk.main()
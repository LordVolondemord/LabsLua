lgi=require 'lgi'

gtk=lgi.Gtk
gtk.init();

bld=gtk.Builder()
bld:add_from_file('lab-02.glade')

ui=bld.objects

ui.wnd.title='lab-02 Lebedev'
ui.wnd.on_destroy=gtk.main_quit





function ui.addB:on_clicked(...)
a=tonumber(ui.a_txt.text)
b=tonumber(ui.b_txt.text)
ui.resL.label=a+b
end
function ui.subB:on_clicked(...)
a=tonumber(ui.a_txt.text)
b=tonumber(ui.b_txt.text)
ui.resL.label=a-b
end

function ui.mulB:on_clicked(...)
a=tonumber(ui.a_txt.text)
b=tonumber(ui.b_txt.text)
ui.resL.label=a*b
end

function ui.divB:on_clicked(...)
a=tonumber(ui.a_txt.text)
b=tonumber(ui.b_txt.text)
ui.resL.label=a/b
end
ui.wnd:show_all()
gtk.main()


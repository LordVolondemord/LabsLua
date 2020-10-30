lgi=require 'lgi'

gtk=lgi.Gtk
gtk.init();

bld=gtk.Builder()
bld:add_from_file('lab-02.glade')

ui=bld.objects

ui.wnd.title='lab-03 Lebedev'
ui.wnd.on_destroy=gtk.main_quit

prov=gtk.CssProvider()
prov:load_from_path('style.css')
scr= gtk.Screen.get_default()
ctx.add_provider_for_screen(src,prov,gtk.STYLE_PRIORITY_APPLICATION)

opt={ui.A,ui.B,ui.C,ui.D}

function update()

end


ui.wnd:show_all()
gtk.main()

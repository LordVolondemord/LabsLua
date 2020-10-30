lgi=require 'lgi'

gtk=lgi.Gtk
gtk.init();

bld=gtk.Builder()
bld:add_from_file('lab-03.glade')

ui=bld.objects
ui.wnd.title='lab-03 Lebedev'
ui.wnd.on_destroy=gtk.main_quit

--prov=gtk.CssProvider()
--prov:load_from_path('style.css')
--scr= gtk.Screen.get_default()
--ctx.add_provider_for_screen(src,prov,gtk.STYLE_PRIORITY_APPLICATION)

opt={ui.A,ui.B,ui.C,ui.D}

function update()
x=0
y=0
if ui.X.active==true then x=1 end
if ui.Y.active==true then y=1 end
v=x+y*2
opt[v+1].active=true
ui.valueLabel.label=v
end
function ui.X:on_clicked(...)
update()
end
function ui.Y:on_clicked(...)
update()
end



ui.wnd:show_all()
gtk.main()

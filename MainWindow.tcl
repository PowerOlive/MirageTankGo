#############################################################################
# Generated by PAGE version 4.10
# in conjunction with Tcl version 8.6
set vTcl(timestamp) ""


if {!$vTcl(borrow)} {

set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #d9d9d9
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #d8d8d8
set vTcl(active_menu_fg) #000000
}

#################################
#LIBRARY PROCEDURES
#


if {[info exists vTcl(sourcing)]} {

proc vTcl:project:info {} {
    set base .top37
    namespace eval ::widgets::$base {
        set dflt,origin 0
        set runvisible 1
    }
    namespace eval ::widgets_bindings {
        set tagslist _TopLevel
    }
    namespace eval ::vTcl::modules::main {
        set procs {
        }
        set compounds {
        }
        set projectType single
    }
}
}

#################################
# GENERATED GUI PROCEDURES
#

proc vTclWindow.top37 {base} {
    if {$base == ""} {
        set base .top37
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background {#d9d9d9} -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 367x224+429+462
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1905 1050
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "MirageTankGoGUI"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    entry $top.ent38 \
        -background white -font TkFixedFont -foreground {#000000} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent38" "hostFile" vTcl:WidgetProc "Toplevel1" 1
    vTcl::widgets::ttk::custom::CreateCmd $top.cus39 \
        -background {#d9d9d9} -height 75 -highlightcolor black -width 125 
    vTcl:DefineAlias "$top.cus39" "Custom1" vTcl:WidgetProc "Toplevel1" 1
    button $top.but41 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#d9d9d9} -command hostFileBrowser -foreground {#000000} \
        -highlightcolor black -state active -text 浏览.. 
    vTcl:DefineAlias "$top.but41" "hostBrowse" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab42 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text 宿主文件: 
    vTcl:DefineAlias "$top.lab42" "Label1" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab43 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text {隐藏文件: } 
    vTcl:DefineAlias "$top.lab43" "Label2" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent44 \
        -background white -font TkFixedFont -foreground {#000000} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent44" "hideFile" vTcl:WidgetProc "Toplevel1" 1
    button $top.but45 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#d9d9d9} -command hideFileBrowser -foreground {#000000} \
        -highlightcolor black -text 浏览.. 
    vTcl:DefineAlias "$top.but45" "hideBrowse" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent47 \
        -background white -font TkFixedFont -foreground {#000000} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$top.ent47" "outputFile" vTcl:WidgetProc "Toplevel1" 1
    button $top.but48 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#d9d9d9} -command outputFileBrowser \
        -foreground {#000000} -highlightcolor black -text 浏览.. 
    vTcl:DefineAlias "$top.but48" "outputBrowse" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab49 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text 输出文件: 
    vTcl:DefineAlias "$top.lab49" "Label3" vTcl:WidgetProc "Toplevel1" 1
    spinbox $top.spi51 \
        -activebackground {#f9f9f9} -background white -foreground black \
        -from 0.0 -highlightcolor black -increment 0.1 \
        -insertbackground black -justify right -selectbackground {#c4c4c4} \
        -selectforeground black -to 1.0 -values 0.3 
    vTcl:DefineAlias "$top.spi51" "hideRatio" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab52 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text 隐藏系数: 
    vTcl:DefineAlias "$top.lab52" "Label4" vTcl:WidgetProc "Toplevel1" 1
    button $top.but53 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#d9d9d9} -command startBuild -foreground {#000000} \
        -highlightcolor black -text 开始发车! 
    vTcl:DefineAlias "$top.but53" "start" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.ent38 \
        -in $top -x 100 -y 30 -width 156 -relwidth 0 -height 26 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.cus39 \
        -in $top -x 160 -y 240 -anchor nw -bordermode ignore 
    place $top.but41 \
        -in $top -x 260 -y 30 -width 72 -relwidth 0 -height 26 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab42 \
        -in $top -x 30 -y 30 -anchor nw -bordermode ignore 
    place $top.lab43 \
        -in $top -x 30 -y 60 -anchor nw -bordermode ignore 
    place $top.ent44 \
        -in $top -x 100 -y 60 -width 156 -relwidth 0 -height 26 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but45 \
        -in $top -x 260 -y 60 -width 72 -relwidth 0 -height 26 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.ent47 \
        -in $top -x 100 -y 90 -width 156 -relwidth 0 -height 26 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but48 \
        -in $top -x 260 -y 90 -width 72 -relwidth 0 -height 26 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab49 \
        -in $top -x 30 -y 90 -anchor nw -bordermode ignore 
    place $top.spi51 \
        -in $top -x 100 -y 120 -width 156 -relwidth 0 -height 26 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab52 \
        -in $top -x 30 -y 120 -anchor nw -bordermode ignore 
    place $top.but53 \
        -in $top -x 80 -y 160 -width 222 -relwidth 0 -height 42 -relheight 0 \
        -anchor nw -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

#############################################################################
## Binding tag:  _TopLevel

bind "_TopLevel" <<Create>> {
    if {![info exists _topcount]} {set _topcount 0}; incr _topcount
}
bind "_TopLevel" <<DeleteWindow>> {
    if {[set ::%W::_modal]} {
                vTcl:Toplevel:WidgetProc %W endmodal
            } else {
                destroy %W; if {$_topcount == 0} {exit}
            }
}
bind "_TopLevel" <Destroy> {
    if {[winfo toplevel %W] == "%W"} {incr _topcount -1}
}

  set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
Window show .
Window show .top37 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}


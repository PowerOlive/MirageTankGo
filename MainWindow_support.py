#! /usr/bin/env python
#
# Support module generated by PAGE version 4.10
# In conjunction with Tcl version 8.6
#    Jan 22, 2018 12:13:14 AM
#    Jan 22, 2018 08:45:13 AM
#    Jan 22, 2018 09:10:39 AM
#    Jan 22, 2018 09:23:50 AM


import sys


try:
    from Tkinter import *
except ImportError:
    from tkinter import *
    import tkinter.filedialog as filedialog
    import tkinter.messagebox as messagebox
    from PIL import Image
    from PIL import ImageTk

try:
    import CMTCore as MTCore
except ImportError:
    import MTCore

try:
    import ttk
    py3 = 0
except ImportError:
    import tkinter.ttk as ttk
    py3 = 1

def set_Tk_var():
    global defaultWhite
    defaultWhite = StringVar()
    defaultWhite.set('white.jpg')

    global defaultBlack
    defaultBlack = StringVar()
    defaultBlack.set('black.jpg')

    global defaultOutput
    defaultOutput = StringVar()
    defaultOutput.set('remu.png')

    global spinbox
    spinbox = StringVar()

    global che50
    che50 = BooleanVar()
    che50.set(False)

    global blackLight
    blackLight = DoubleVar()
    blackLight.set(0.5)

    global whiteColor
    whiteColor = DoubleVar()
    whiteColor.set(0.5)

    global blackColor
    blackColor = DoubleVar()
    blackColor.set(0.7)

    global blackLight_c
    blackLight_c = DoubleVar()
    blackLight_c.set(0.18)

    global scale
    scale = DoubleVar()
    scale.set(1.0)


def hideFileBrowser():
    global w
    print('MainWindow_support.hideFileBrowser')
    filename = filedialog.askopenfilename(filetypes=[('任何图片', '.*')])
    w.hideFile.delete(0, END)
    w.hideFile.insert(0, filename)
    sys.stdout.flush()

def hostFileBrowser():
    global w
    print('MainWindow_support.hostFileBrowser')
    filename = filedialog.askopenfilename(filetypes=[('任何图片', '.*')])
    w.hostFile.delete(0, END)
    w.hostFile.insert(0, filename)
    sys.stdout.flush()

def outputFileBrowser():
    global w
    print('MainWindow_support.outputFileBrowser')
    filename = filedialog.asksaveasfilename(filetypes=[('png图片', '.png')])
    w.outputFile.delete(0, END)
    w.outputFile.insert(0, filename)
    sys.stdout.flush()


def startBuild():
    global w, scale, defaultOutput
    print('MainWindow_support.startBuild')

    tryBuild(False).save(defaultOutput.get(), 'PNG')

    messagebox.showinfo(title='提示', message='转换成功!')
    sys.stdout.flush()


def tryBuild(justATry=True):
    global w, blackLight, defaultWhite, defaultBlack, che50,\
        blackLight_c, whiteColor, blackColor, scale

    print('MainWindow_support.tryBuild')

    whiteImg = Image.open(defaultWhite.get())
    blackImg = Image.open(defaultBlack.get())
    enableChess = che50.get()

    # 预览模式下, 默认不发全车, 提高预览速度
    if justATry:
        size = (w.showWhite.winfo_width(), w.showWhite.winfo_height())
        _scale = min([size[i] / whiteImg.size[i] for i in range(2)])
    else:
        _scale = scale.get()

    # 调整大小
    whiteImg = whiteImg.resize((round(x * _scale) for x in whiteImg.size), Image.ANTIALIAS)
    blackImg = blackImg.resize((round(x * _scale) for x in blackImg.size), Image.ANTIALIAS)

    if w.TNotebook1.tab(w.TNotebook1.select(), "text") == "灰度车":
        output = MTCore.grayCar(whiteImg, blackImg, blackLight.get(), enableChess)
    else:
        output = MTCore.colorfulCar(whiteImg, blackImg, blackLight_c.get(), whiteColor.get(), blackColor.get())

    if justATry:
        w._img = ImageTk.PhotoImage(output, height=484, width=340)
        w.showWhite.configure(image=w._img)
        w.showBlack.configure(image=w._img)

    sys.stdout.flush()
    return output


def init(top, gui, *args, **kwargs):
    global w, top_level, root
    w = gui
    top_level = top
    root = top


def destroy_window():
    # Function which closes the window.
    global top_level
    top_level.destroy()
    top_level = None

if __name__ == '__main__':
    import MainWindow
    MainWindow.vp_start_gui()












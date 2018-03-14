#-------------------------------------------------
#
# Project created by QtCreator 2018-03-12T21:11:20
#
#-------------------------------------------------

QT       += core gui multimedia

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Test-MAME-YM2608
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


CONFIG += c++14


SOURCES += \
        main.cpp \
        mainwindow.cpp \
    chips/opna.cpp \
    chips/mame/2608intf.c \
    chips/mame/emu2149.c \
    chips/mame/fm.c \
    chips/mame/ymdeltat.c \
    audio_stream.cpp \
    audio_stream_mixier.cpp \
    widgets/labeled_slider.cpp \
    widgets/operator_sliders.cpp \
    parameter_state.cpp

HEADERS += \
        mainwindow.h \
    chips/mame/2608intf.h \
    chips/mame/emu2149.h \
    chips/mame/emutypes.h \
    chips/mame/fm.h \
    chips/mame/mamedef.h \
    chips/mame/ymdeltat.h \
    chips/opna.hpp \
    common.hpp \
    types.h \
    audio_stream.hpp \
    audio_stream_mixier.hpp \
    widgets/labeled_slider.h \
    widgets/operator_sliders.h \
    parameter_state.hpp

FORMS += \
        mainwindow.ui \
    widgets/labeled_slider.ui \
    widgets/operator_sliders.ui
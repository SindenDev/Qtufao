#-------------------------------------------------
#
# Project created by QtCreator 2012-09-22T12:02:52
#
#-------------------------------------------------

CONFIG   += C++11
QT       += core widgets network

TARGET = websocket-chat-client
TEMPLATE = app
DESTDIR = $$OUT_PWD/../../bin

INCLUDEPATH += $$PWD/../../

win32: LIBS += -L$$OUT_PWD/../../lib/ -ltufao

SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui

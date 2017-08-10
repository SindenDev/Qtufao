QT += core network
QT -= gui

TARGET = request-dumper
TEMPLATE = app

CONFIG += C++11 

DESTDIR = $$OUT_PWD/../../bin

INCLUDEPATH += $$PWD/../../

win32: LIBS += -L$$OUT_PWD/../../lib/ -ltufao

SOURCES += main.cpp \
    mainhandler.cpp

HEADERS  += \
    mainhandler.h

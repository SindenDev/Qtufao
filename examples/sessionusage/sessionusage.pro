QT += core network
QT -= gui

TARGET = sessionusage
TEMPLATE = app

CONFIG += C++11 

DESTDIR = $$OUT_PWD/../../bin

INCLUDEPATH += $$PWD/../../

win32: LIBS += -L$$OUT_PWD/../../lib/ -ltufao
SOURCES += main.cpp \
    readhandler.cpp \
    sethandler.cpp \
    unsethandler.cpp

HEADERS += \
    readhandler.h \
    sethandler.h \
    unsethandler.h

RESOURCES += \
    static.qrc

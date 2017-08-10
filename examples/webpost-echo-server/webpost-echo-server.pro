TARGET = webpost-echo-server
TEMPLATE = app

CONFIG += C++11
QT += core network
QT -= gui
DESTDIR = $$OUT_PWD/../../bin

INCLUDEPATH += $$PWD/../../

win32: LIBS += -L$$OUT_PWD/../../lib/ -ltufao
SOURCES += main.cpp

RESOURCES += \
    resources.qrc

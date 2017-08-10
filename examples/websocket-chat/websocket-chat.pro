TARGET = websocket-chat
TEMPLATE = app

QT += core network
QT -= gui
DESTDIR = $$OUT_PWD/../../bin

INCLUDEPATH += $$PWD/../../

win32: LIBS += -L$$OUT_PWD/../../lib/ -ltufao
SOURCES += main.cpp \
    webserver.cpp

OTHER_FILES += \
    index.html

HEADERS += \
    webserver.h

RESOURCES += \
    resources.qrc

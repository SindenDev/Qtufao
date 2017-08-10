#-------------------------------------------------
#
# Project created by QtCreator 2016-08-05T19:09:07
#
#-------------------------------------------------

QT       += network

QT       -= gui

DESTDIR = $$OUT_PWD/../lib
TEMPLATE = lib

DEFINES += TUFAO_LIBRARY

SOURCES += \
    abstractmessagesocket.cpp \
    classhandler.cpp \
    classhandlermanager.cpp \
    headers.cpp \
    httpfileserver.cpp \
    httppluginserver.cpp \
    httpserver.cpp \
    httpserverrequest.cpp \
    httpserverrequestrouter.cpp \
    httpserverresponse.cpp \
    httpsserver.cpp \
    httpupgraderouter.cpp \
    notfoundhandler.cpp \
    sessionstore.cpp \
    simplesessionstore.cpp \
    urlrewriterhandler.cpp \
    websocket.cpp \
    priv/asctime.cpp \
    priv/reasonphrase.cpp \
    priv/rfc1036.cpp \
    priv/rfc1123.cpp \
    priv/tcpserverwrapper.cpp \
    priv/http_parser.c

HEADERS +=\
        tufao_global.h \
    abstracthttpserverrequesthandler.h \
    abstracthttpupgradehandler.h \
    abstractmessagesocket.h \
    classhandler.h \
    classhandlermanager.h \
    headers.h \
    httpfileserver.h \
    httppluginserver.h \
    httpserver.h \
    httpserverplugin.h \
    httpserverrequest.h \
    httpserverrequestrouter.h \
    httpserverresponse.h \
    httpsserver.h \
    httpupgraderouter.h \
    ibytearray.h \
    notfoundhandler.h \
    session.h \
    sessionsettings.h \
    sessionstore.h \
    simplesessionstore.h \
    urlrewriterhandler.h \
    websocket.h \
    priv/asctime.h \
    priv/classhandlermanager.h \
    priv/cryptography.h \
    priv/dependencytree.h \
    priv/http_parser.h \
    priv/httpfileserver.h \
    priv/httppluginserver.h \
    priv/httpserver.h \
    priv/httpserverrequest.h \
    priv/httpserverrequestrouter.h \
    priv/httpserverresponse.h \
    priv/httpsserver.h \
    priv/httpupgraderouter.h \
    priv/reasonphrase.h \
    priv/rfc1036.h \
    priv/rfc1123.h \
    priv/sessionstore.h \
    priv/simplesessionstore.h \
    priv/tcpserverwrapper.h \
    priv/urlrewriterhandler.h \
    priv/websocket.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

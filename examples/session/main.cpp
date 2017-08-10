#include <QCoreApplication>
#include "tufao/httpserver.h"
#include "mainhandler.h"
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    
    Tufao::HttpServer server;
    MainHandler h;

    QObject::connect(&server, &Tufao::HttpServer::requestReady,
                     &h, &MainHandler::handleRequest);

    server.listen(QHostAddress::Any, 8080);
    return a.exec();
}

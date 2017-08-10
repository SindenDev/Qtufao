#include <QCoreApplication>

#include <QFile>
#include <QUrl>
#include <QSslKey>
#include <QSslCertificate>
#include <QDebug>
//#include "Version.h"
#include "tufao/headers.h"
#include "tufao/httpsserver.h"
#include "tufao/httpserverrequest.h"
using namespace Tufao;
void https_example()
{
    HttpsServer server;
    QFile key(":/key.pem");
    key.open(QIODevice::ReadOnly);
    
    server.setPrivateKey(QSslKey(&key, QSsl::Rsa, QSsl::Pem, QSsl::PrivateKey,"123456"));
      
    QFile cert(":/cert.pem");
    cert.open(QIODevice::ReadOnly);
    server.setLocalCertificate(QSslCertificate(&cert));

    QObject::connect(&server, &Tufao::HttpsServer::requestReady,
                   [](Tufao::HttpServerRequest &request,
                      Tufao::HttpServerResponse &response) {
                       response.writeHead(Tufao::HttpResponseStatus::OK);
                       response.headers().replace("Content-Type", "text/plain");
                       response.end("https !!Hello " + request.url().path().toUtf8());
                   });

    server.listen(QHostAddress::Any, 8880);
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    https_example();
    return a.exec();
}

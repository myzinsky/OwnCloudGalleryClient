#include "webdavinterface.h"

WebDavInterface::WebDavInterface(QObject *parent) : QObject(parent)
{
    w.setConnectionSettings(QWebdav::HTTPS, "demo.owncloud.org", "/remote.php/webdav/", "test", "test", 443);

    connect(&p, SIGNAL(finished()), this, SLOT(printList()));
    connect(&p, SIGNAL(errorChanged(QString)), this, SLOT(printError(QString)));
    connect(&w, SIGNAL(errorChanged(QString)), this, SLOT(printError(QString)));

    p.listDirectory(&w, "/");

}

void WebDavInterface::printError(QString errorMsg)
{
    qDebug() << errorMsg;
}

void WebDavInterface::printList()
{
    QList<QWebdavItem> list = p.getList();

    QWebdavItem item;
    foreach(item, list)
    {
        qDebug() << item.name();
    }
}

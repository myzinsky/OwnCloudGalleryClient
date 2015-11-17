#ifndef WEBDAVINTERFACE_H
#define WEBDAVINTERFACE_H

#include <QObject>

#include <qwebdav.h>
#include <qwebdavdirparser.h>
#include <qwebdavitem.h>

class WebDavInterface : public QObject
{
    Q_OBJECT

  public:
    WebDavInterface(QObject* parent = 0);

  private:
    QWebdav w;
    QWebdavDirParser p;

  signals:

  public slots:
    void printError(QString errorMsg);
    void printList();

};

#endif // WEBDAVINTERFACE_H

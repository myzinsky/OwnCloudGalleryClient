#ifndef WEBDAVINTERFACE_H
#define WEBDAVINTERFACE_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>

#include <qwebdav.h>
#include <qwebdavdirparser.h>
#include <qwebdavitem.h>

class WebDavInterface
{
  public:
    WebDavInterface();

  private:
    QWebdav w;
};

#endif // WEBDAVINTERFACE_H

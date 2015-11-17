#ifndef WEBDAVINTERFACE_H
#define WEBDAVINTERFACE_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>

#include <neon/ne_request.h>
#include <neon/ne_auth.h>

class WebDavInterface
{
  public:
    WebDavInterface();

  private:

    static char * url;
    static char * user;
    static char * pass;

    static int define_auth(void *userdata, const char *realm, int attempts, char *username, char *password);
};

#endif // WEBDAVINTERFACE_H

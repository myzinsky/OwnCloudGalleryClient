#include "webdavinterface.h"

WebDavInterface::WebDavInterface()
{
    // http://test.webdav.org/auth-basic/
    // This area has Basic Authentication enabled.
    // Available users are: user1 through user9.
    // The password for each user is the same as the id.
    // Authentication is required to read or write resources in this namespace.

    url = "test.webdav.org/auth-basic/";
    user = "user1";
    pass = "user1";

    ne_session * dav;
    int res;
    int fd;

    ne_sock_init();

    dav = ne_session_create("https", url, 443);

    // Define authentication information for the URL via callback:
    ne_set_server_auth(dav, &WebDavInterface::define_auth, NULL);

    // Accept Certificate
    ne_ssl_trust_default_ca(dav);

    // Destroy the Session and Exit:
    ne_session_destroy(dav);
    ne_sock_exit();
}

int WebDavInterface::define_auth(void *userdata, const char *realm, int attempts, char *username, char *password)
{
    strncpy(username, user, NE_ABUFSIZ);
    strncpy(password, pass, NE_ABUFSIZ);
    return attempts;
}

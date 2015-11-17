## ####################################################################
## OwnCloudGalleryClient - Owncloud synced picture management
##
## OwnCloudGalleryClient.pro
##
## created: 16. Nov 2015
## author: Florian Faßnacht (fassnacht), Matthias Jung (myzinsky)
##
## brief: Project file for crossplatform building.
## ####################################################################

###################
#Template options:
###################
TEMPLATE = app
QT += qml quick widgets network xml
QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.11

# Enable DEBUG output with qDebug()
#DEFINES += DEBUG_WEBDAV

###################
#QWebDav Library:
###################

INCLUDEPATH += thirdParty/qwebdav/qwebdavlib/

HEADERS += thirdParty/qwebdav/qwebdavlib/qwebdav.h
HEADERS += thirdParty/qwebdav/qwebdavlib/qwebdavitem.h
HEADERS += thirdParty/qwebdav/qwebdavlib/qwebdavdirparser.h
HEADERS += thirdParty/qwebdav/qwebdavlib/qnaturalsort.h
HEADERS += thirdParty/qwebdav/qwebdavlib/.h

SOURCES += thirdParty/qwebdav/qwebdavlib/qwebdav.cpp
SOURCES += thirdParty/qwebdav/qwebdavlib/qwebdavitem.cpp
SOURCES += thirdParty/qwebdav/qwebdavlib/qwebdavdirparser.cpp
SOURCES += thirdParty/qwebdav/qwebdavlib/qnaturalsort.cpp

QMAKE_CXXFLAGS += -Wno-overloaded-virtual
DEFINES += QWEBDAVITEM_EXTENDED_PROPERTIES
DEFINES += QWEBDAV_LIBRARY

###################
#Files:
###################

HEADERS += webdavinterface.h

SOURCES += main.cpp
SOURCES += webdavinterface.cpp

RESOURCES += qml.qrc

####################################################
#Custom deployment:
# - Only use ONE of the following defines at a time!
# - Make a distclean in build directory
#   before rebuilding with an other define!
####################################################
DEFINES += __deploy_desktop
#DEFINES += __deploy_ios
#DEFINES += __deploy_android

# Additional import path used to resolve QML modules in Qt Creator's code model
#QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

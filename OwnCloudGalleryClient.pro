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
QT += qml quick widgets

###################
#Librarys:
###################
LIBS += -L ../OwnCloudGalleryClient/thirdParty/neon/lib -lneon
INCLUDEPATH += ./thirdParty/neon/include

# neon needs 10.11 ?
QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.11

###################
#Files:
###################
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

HEADERS += webdavinterface.h


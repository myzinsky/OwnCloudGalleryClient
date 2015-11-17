## ####################################################################
## OwnCloudGalleryClient - Owncloud synced picture management
##
## OwnCloudGalleryClient.pro
##
## created: 16. Nov 2015
## author: Florian Faßnacht (fassnacht)
##
## brief: Project file for crossplatform building.
## ####################################################################

###################
#Template options:
###################
TEMPLATE = app
QT += qml quick widgets

###################
#Files:
###################
SOURCES += main.cpp \
    thumbgenerator.cpp

HEADERS += \
    thumbgenerator.h \
    ocgdefinitions.h

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



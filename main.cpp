// ####################################################################
// OwnCloudGalleryClient - Owncloud synced picture management
//
// main.cpp
//
// created: 16. Nov 2015
// author: Florian Faßnacht (fassnacht)
//
// brief: Backend logic and connection.
// ####################################################################

// build dependent includes
#ifdef __deploy_ios
#include <QGuiApplication>
#include <QQuickView>
#include <QQmlEngine>
#endif

#ifdef __deploy_desktop
#include <QApplication>
#include <QQmlApplicationEngine>
#endif

//other includes
#include "thumbgenerator.h"
#include <QDirIterator>
#include <iostream>
#include <QDebug>
#include <QImage>
#include <ne_dates.h>

int main(int argc, char *argv[])
{

    //Setup UI
    QGuiApplication app(argc,argv);

#ifdef __deploy_desktop
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/desktop.qml")));
#endif

#ifdef __deploy_ios
    QQuickView view;
    view.setResizeMode(QQuickView::SizeRootObjectToView);

    QObject::connect(view.engine(), SIGNAL(quit()), qApp, SLOT(quit()));
    view.setSource(QUrl("qrc:/AdaptiveUI.qml"));
    view.show();

    view.setFlags(Qt::MaximizeUsingFullscreenGeometryHint);

#endif

    //Other logic

    QDirIterator dir("/Users/florian.fassnacht/Desktop/Dave Matthews Band 2",QDir::Files, QDirIterator::NoIteratorFlags);
    thumbGenerator tg;

    while(dir.hasNext())
    {
        dir.next();
        tg.getBigThumb(dir.filePath());

    }

    return app.exec();
}


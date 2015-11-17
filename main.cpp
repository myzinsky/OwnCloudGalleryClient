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


#ifdef __deploy_ios
    #include <QGuiApplication>
    #include <QQuickView>
    #include <QQmlEngine>
#endif

#ifdef __deploy_desktop
    #include <QApplication>
    #include <QQmlApplicationEngine>
#endif
int main(int argc, char *argv[])
{
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
    return app.exec();
}


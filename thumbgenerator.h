#ifndef THUMBGENERATOR_H
#define THUMBGENERATOR_H

#include <QObject>
#include <QImage>
#include <QDirIterator>
#include "ocgdefinitions.h"

class thumbGenerator : public QObject
{
    Q_OBJECT
public:
    explicit thumbGenerator(QObject *parent = 0);
private:
    bool saveThumbe(QString pathToCacheLocation, OCG_THUMB_SIZE size, QImage thumb);

signals:

public slots:
    void getBigThumb(QString pathToImageFile);
    void getMediumThumb(QString pathToImageFile);
    void getSmallThumb(QString pathToImageFile);

};

#endif // THUMBGENERATOR_H

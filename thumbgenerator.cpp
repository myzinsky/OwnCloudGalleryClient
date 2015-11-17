#include "thumbgenerator.h"

thumbGenerator::thumbGenerator(QObject *parent) : QObject(parent)
{

}

void thumbGenerator::getBigThumb(QString pathToImageFile)
{
    QImage image = QImage(pathToImageFile);
    QImage thumb = image.scaledToHeight(800,Qt::FastTransformation).scaledToHeight(200, Qt::SmoothTransformation);
    saveThumbe(pathToImageFile, OCG_BIG_THUMB, thumb);
    //return thumb;
}

void thumbGenerator::getMediumThumb(QString pathToImageFile)
{
    QImage image = QImage(pathToImageFile);
    QImage thumb = image.scaledToHeight(400,Qt::FastTransformation).scaledToHeight(100, Qt::SmoothTransformation);
    saveThumbe(pathToImageFile, OCG_MEDIUM_THUMB, thumb);
    //return thumb;
}

void thumbGenerator::getSmallThumb(QString pathToImageFile)
{
    QImage image = QImage(pathToImageFile);
    QImage thumb = image.scaledToHeight(200,Qt::FastTransformation).scaledToHeight(50, Qt::SmoothTransformation);
    saveThumbe(pathToImageFile, OCG_SMALL_THUMB, thumb);
    //return thumb;
}

bool thumbGenerator::saveThumbe(QString pathToCacheLocation, OCG_THUMB_SIZE size, QImage thumb)
{
    QString thumbSize;
    switch(size){
    case OCG_BIG_THUMB:
        thumbSize = "_bt.png";
        break;
    case OCG_MEDIUM_THUMB:
        thumbSize = "_mt.png";
        break;
    case OCG_SMALL_THUMB:
        thumbSize = "_st.png";
        break;
    default:
        thumbSize = "_bt.png";
    }

    QFileInfo info(pathToCacheLocation);
    QDir saveDir;
    saveDir.mkdir(info.absolutePath().append("/OCG_thumbs/"));

    return thumb.save(info.absolutePath().append("/OCG_thumbs/") + info.baseName() + thumbSize, "PNG",-1);
}

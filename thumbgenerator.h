#ifndef THUMBGENERATOR_H
#define THUMBGENERATOR_H

#include <QObject>

class thumbGenerator : public QObject
{
    Q_OBJECT
public:
    explicit thumbGenerator(QObject *parent = 0);

signals:

public slots:
};

#endif // THUMBGENERATOR_H

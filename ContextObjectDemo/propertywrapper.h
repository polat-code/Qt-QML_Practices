#ifndef PROPERTYWRAPPER_H
#define PROPERTYWRAPPER_H

#include <QObject>

class PropertyWrapper : public QObject
{
    Q_OBJECT
public:
    explicit PropertyWrapper(QObject *parent = nullptr);

signals:

};

#endif // PROPERTYWRAPPER_H

#ifndef NESTEDCLASS_H
#define NESTEDCLASS_H

#include <QObject>

class NestedClass : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int property READ property WRITE setProperty NOTIFY propertyChanged)

public:
    explicit NestedClass(QObject *parent = nullptr);

    int property();
    void setProperty(int ipr);


signals:
    void propertyChanged();

private:
    int m_iProperty = 0;

};

#endif // NESTEDCLASS_H

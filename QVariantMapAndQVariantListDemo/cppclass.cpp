#include "cppclass.h"
#include <QDebug>
#include <QColor>
#include <QDate>


CppClass::CppClass(QObject *parent) : QObject(parent), qmlRootObject(nullptr)
{

}

void CppClass::passFromQmlToCpp(QVariantList list/* array from JS */ , QVariantMap map /* Object from JS */)
{

    qDebug() << "Received variant list and map from QML";
    qDebug() << "List : ";
    for(int i = 0; i < list.size();i++) {
        qDebug() << "List Item :" << list.at(i).toString();
    }
    qDebug() << "Map : ";
    for(int i = 0; i < map.keys().size(); i++) {
        qDebug() << "Map item : " + map[map.keys().at(i)].toString();
    }
}


QVariantList CppClass::getVariantListFromCpp()
{
    QVariantList list;
    list << 123.3 << QColor(Qt::cyan) << "Qt is greats" << 10;
    return list;
}

QVariantMap CppClass::getVariantMapFromCpp()
{
    QVariantMap map;
    map.insert("movie","Game of Thrones");
    map.insert("names","John Snow");
    map.insert("role","Main Character");
    map.insert("release",QDate(2011, 4, 17));

    return map;
}

void CppClass::triggerJSCall() {

    QVariantList list;
    list << 123.3 << QColor(Qt::cyan) << "Qt is greats" << 10;

    QVariantMap map;
    map.insert("movie","Game of Thrones");
    map.insert("names","John Snow");
    map.insert("role","Main Character");
    map.insert("release",QDate(2011, 4, 17));

    QMetaObject::invokeMethod(qmlRootObject,"arrayObjectFunc",
                              Q_ARG(QVariant, QVariant::fromValue(list)),
                              Q_ARG(QVariant, QVariant::fromValue(map)));

}


void CppClass::setQmlRootObject(QObject *value)
{
    qmlRootObject = value;
}

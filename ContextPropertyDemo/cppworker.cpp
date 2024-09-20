#include "cppworker.h"
#include <QDebug>

CppWorker::CppWorker(QObject *parent) : QObject(parent)
{

}

void CppWorker::regularMethod()
{
    qDebug() << "This is a C++ method , regular Method is called";
}

QString CppWorker::regularMethodWithReturn(QString name, int age)
{
    return QString(name + QString::number(age) + " years old.");
}

void CppWorker::cppSlot()
{
    qDebug() << "This is C++ method , cppSlot called";
}

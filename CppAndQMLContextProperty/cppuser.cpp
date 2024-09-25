#include "cppuser.h"
using namespace std;
#include <QDebug>


CppUser::CppUser(QObject *parent) : QObject(parent)
{

}

CppUser::CppUser(QString name, QString surname, int birthYear, int birthMonth, int birthDay)
{
    this->name = name;
    this->surname = surname;
    this->birthYear = birthYear;
    this->birthMonth = birthMonth;
    this->birthDay = birthDay;
}

int CppUser::getAge()
{
    return 2024 - this->birthYear;
}

QString CppUser::getName()
{
    return this->name;
}

QString CppUser::getSurname()
{
    return this->surname;
}

void CppUser::registerUser()
{
       qDebug() << "Name : " + name + " , surname : " + surname + " is registered to database";
}

void CppUser::loginUser()
{
    qDebug() << "Name : " + name + " , surname : " + surname + " is login to the system";
}

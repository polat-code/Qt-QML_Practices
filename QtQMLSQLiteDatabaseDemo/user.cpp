#include "user.h"

User::User(QObject *parent) : QObject(parent)
{

}

QString User::name() const
{
    return m_name;
}

QString User::surname() const
{
    return m_surname;
}

int User::age() const
{
    return m_age;
}

int User::id() const
{
    return m_id;
}

void User::setName(QString name)
{
    if (m_name == name)
        return;

    m_name = name;
    emit nameChanged(m_name);
}

void User::setSurname(QString surname)
{
    if (m_surname == surname)
        return;

    m_surname = surname;
    emit surnameChanged(m_surname);
}

void User::setAge(int age)
{
    if (m_age == age)
        return;

    m_age = age;
    emit ageChanged(m_age);
}

void User::setId(int id)
{
    if (m_id == id)
        return;

    m_id = id;
    emit idChanged(m_id);
}

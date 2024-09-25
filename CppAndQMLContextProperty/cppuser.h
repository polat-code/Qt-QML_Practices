#ifndef CPPUSER_H
#define CPPUSER_H

#include <QObject>

class CppUser : public QObject
{
    Q_OBJECT


    QString name;
    QString surname;

    int birthYear;
    int birthMonth;
    int birthDay;

public:
    explicit CppUser(QObject *parent = nullptr);
    explicit CppUser(QString name,
                     QString surname,
                     int birthYear,
                     int birthMonth,
                     int birthDay);

    Q_INVOKABLE int getAge();
    Q_INVOKABLE QString getName();
    Q_INVOKABLE QString getSurname();

    Q_INVOKABLE void registerUser();
    Q_INVOKABLE void loginUser();


signals:

};

#endif // CPPUSER_H

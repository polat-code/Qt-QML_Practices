#ifndef USER_H
#define USER_H

#include <QObject>

class User : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int id READ id WRITE setId NOTIFY idChanged)
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(QString surname READ surname WRITE setSurname NOTIFY surnameChanged)
    Q_PROPERTY(int age READ age WRITE setAge NOTIFY ageChanged)

public:
    explicit User(QObject *parent = nullptr);

    QString name() const;

    QString surname() const;

    int age() const;

    int id() const;

public slots:
    void setName(QString name);

    void setSurname(QString surname);

    void setAge(int age);

    void setId(int id);

signals:

    void nameChanged(QString name);

    void surnameChanged(QString surname);

    void ageChanged(int age);

    void idChanged(int id);

private:


    QString m_name;
    QString m_surname;
    int m_age;
    int m_id;
};

#endif // USER_H

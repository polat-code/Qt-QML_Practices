#ifndef USERMANAGER_H
#define USERMANAGER_H

#include <QObject>
#include "databasemanager.h"

class UserManager : public QObject
{
    Q_OBJECT
public:
    explicit UserManager(DatabaseManager &dbManager);

    bool registerUser(const QString &name,const QString &surname,const QString &email,const QString &telephone,const QString &password);
    QString loginUser(const QString &email, const QString &password);
signals:


private:
    DatabaseManager databaseManager;

};

#endif // USERMANAGER_H

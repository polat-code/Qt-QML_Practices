#ifndef SQLITEDATABASEOPERATIONS_H
#define SQLITEDATABASEOPERATIONS_H

#include <QObject>
#include "user.h"


class SQLiteDatabaseOperations : public QObject
{
    Q_OBJECT
public:
    explicit SQLiteDatabaseOperations(QObject *parent = nullptr);
    bool addUser(User user);
    bool findById(int id);
    int findNumberOfUser();


signals:

};

#endif // SQLITEDATABASEOPERATIONS_H

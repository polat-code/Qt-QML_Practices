#include "sqlitedatabaseoperations.h"
#include <QtSql/QSqlDatabase>
#include <QtSql/QSqlQuery>
#include <QtSql/QSqlError>
#include <QDebug>


SQLiteDatabaseOperations::SQLiteDatabaseOperations(QObject *parent) : QObject(parent)
{
    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
        db.setDatabaseName("mydatabase.db");

        // Open the database
        if (!db.open()) {
            qDebug() << "Error: connection with database failed";
        } else {
            qDebug() << "Database connected successfully!";
        }

        // Initiliaze user table
        QSqlQuery query;
            QString createTable = "CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, surname TEXT, age INTEGER)";
            if (!query.exec(createTable)) {
                qDebug() << "Error creating table:" << query.lastError();
            } else {
                qDebug() << "Table created successfully!";
            }

}

bool SQLiteDatabaseOperations::addUser(User user)
{

    return true;
}

bool SQLiteDatabaseOperations::findById(int id)
{
    return true;
}

int SQLiteDatabaseOperations::findNumberOfUser()
{
    return 0;
}

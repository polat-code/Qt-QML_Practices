#include "DatabaseManager.h"

DatabaseManager::DatabaseManager(const QString &dbName) : databaseName(dbName) {
    db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName(databaseName);
}

DatabaseManager::~DatabaseManager() {
    closeDatabase();
}

bool DatabaseManager::openDatabase() {
    if (!db.open()) {
        qDebug() << "Error: connection with database failed - " << db.lastError();
        return false;
    } else {
        qDebug() << "Database connected successfully!";
        return true;
    }
}

void DatabaseManager::closeDatabase() {
    if (db.isOpen()) {
        db.close();
    }
}

bool DatabaseManager::addUser(const QString &name,const QString &age) {
    QSqlQuery query;
    query.prepare("INSERT INTO users (name, age) VALUES (:name, :age)");
    query.bindValue(":name", name);
    query.bindValue(":age", age);  // Ensure that the 'age' is bound correctly here

    if (!query.exec()) {
        qDebug() << "Error adding user:" << query.lastError();
        return false;
    } else {
        qDebug() << "User added successfully!";
        return true;
    }
}

bool DatabaseManager::updateUser(int id, const QString &name, const QString &age) {
    QSqlQuery query;
    query.prepare("UPDATE users SET name = :name, age = :age WHERE id = :id");
    query.bindValue(":name", name);
    query.bindValue(":age", age);
    query.bindValue(":id", id);

    if (!query.exec()) {
        qDebug() << "Error updating user:" << query.lastError();
        return false;
    } else {
        qDebug() << "User updated successfully!";
        return true;
    }
}

void DatabaseManager::getUsers() {
    QSqlQuery query("SELECT * FROM users");

    while (query.next()) {
        int id = query.value(0).toInt();
        QString name = query.value(1).toString();
        int age = query.value(2).toInt();
        qDebug() << "ID:" << id << " Name:" << name << " Age:" << age;
    }
}

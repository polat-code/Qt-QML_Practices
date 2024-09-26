#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "sqlitedatabaseoperations.h"
#include "DatabaseManager.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    //SQLiteDatabaseOperations sqloperations;

    DatabaseManager dbManager("mydatabase.db");

        // Open the database
        if (!dbManager.openDatabase()) {
            return -1;
        }

        // Create a table if it doesn't exist (could be added to a setup method)
        QSqlQuery query;
        QString createTable = "CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER)";
        if (!query.exec(createTable)) {
            qDebug() << "Error creating table:" << query.lastError();
        } else {
            qDebug() << "Table created successfully!";
        }

        // Add a user
        dbManager.addUser("Alice", "25");
        dbManager.addUser("Bob", "30");

        // Update a user
        dbManager.updateUser(12, "Alice Smith", "26");

        // Get and print all users
        dbManager.getUsers();


    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}

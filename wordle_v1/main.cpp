#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "databasemanager.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    DatabaseManager dbManager("test01_wordle_db.db");
    if (!dbManager.openDatabase()) {
            return -1;
        }


    //dbManager.addUser("Özgürhan","Polat","ozgurhan.45@gmail.com","05531521381","12345");

    dbManager.findNameAndSurnameByEmailAndPassword("ozgurhan.45@gmail.com","12345");


    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}

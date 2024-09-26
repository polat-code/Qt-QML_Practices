#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "databasemanager.h"
#include "usermanager.h"
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    // Initiliaze the database and userManager
    DatabaseManager dbManager("test01_wordle_db.db");
    UserManager userManager(dbManager);

    //userManager.registerUser("Özgürhan","Polat","ozgurhan.1@gmail.com","05531521381","12345");
    //qDebug() << userManager.loginUser("ozgurhan.1@gmail.com","12345");

    //dbManager.addUser("Özgürhan","Polat","ozgurhan.45@gmail.com","05531521381","12345");

    //dbManager.findNameAndSurnameByEmailAndPassword("ozgurhan.45@gmail.com","12345");


    QQmlApplicationEngine engine;

    // Set userManager to context
    engine.rootContext()->setContextProperty("UserManager",&userManager);


    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}

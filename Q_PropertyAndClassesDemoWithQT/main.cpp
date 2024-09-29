#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "nestedclass.h"
#include <QQmlContext>
#include "letterwithcolor.h";

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    NestedClass nestedClass;
    engine.rootContext()->setContextProperty("NestedClass",&nestedClass);

    LetterWithColor letterWithColor;

    engine.rootContext()->setContextProperty("LetterWithColor",&letterWithColor);


    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}

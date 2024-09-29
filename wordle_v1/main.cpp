#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "databasemanager.h"
#include "usermanager.h"
#include "letterwithcolor.h"
#include "gamemanager.h";
#include <QQmlContext>

QString colorToString(LetterWithColor::BACKGROUND_COLOR color) {
    switch (color) {
        case LetterWithColor::YELLOW: return "YELLOW";
        case LetterWithColor::GREEN: return "GREEN";
        case LetterWithColor::GRAY: return "GRAY";
        default: return "UNKNOWN";
    }
}

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

    //QString result =  dbManager.findNameAndSurnameByEmailAndPassword("ozgurhan.45@gmail.com","12345");

    /*
    LetterWithColor letterWithColor("A", LetterWithColor::GRAY);
    qDebug() << letterWithColor.getLetter();
    qDebug() << letterWithColor.getColor();
    */
    /*
    LetterWithColor letterWithColor1("A", LetterWithColor::GRAY);
    qDebug() << letterWithColor1.getLetter() + " : " + letterWithColor1.getColor();

    qDebug() << letterWithColor1.getLetter() + " : " + colorToString(letterWithColor1.getColor());

    // Now set the color and print again
    letterWithColor1.setColor(LetterWithColor::YELLOW);
    qDebug() << letterWithColor1.getLetter() + " : " + colorToString(letterWithColor1.getColor());

*/

    GameManager gameManager;
    Word* searchWord = gameManager.startAGame();
    qDebug() << "1: "<< searchWord->getWord()[0]->getLetter() << " 3: " << searchWord->getWord()[3]->getLetter() ;
    //qDebug() << gameManager.checkWordWhetherInWordList("game");
    Word* userWord = gameManager.checkSimilarity("eager");
    qDebug() << userWord->getWord()[1]->getColor();
    qDebug() << gameManager.checkGameIsOverOrNoT(userWord);


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

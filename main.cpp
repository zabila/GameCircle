#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QObject>

#include "circle.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    qmlRegisterType<Circle>("circle", 1, 0, "Circle");

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;


    return app.exec();
}

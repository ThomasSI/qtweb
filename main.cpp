#include <QGuiApplication>
#include <QQuickView>
#include <QQmlApplicationEngine>
#include <QtWebEngine/QWebEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QWebEngine::initialize();

    QQuickView viewer;
    viewer.setSource(QUrl(QStringLiteral("qrc:///main.qml")));
    viewer.show();
    return app.exec();
}

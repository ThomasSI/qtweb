#include <QApplication>
#include <QtWidgets/QMainWindow>
#include <QQuickView>
#include <QtWebKitWidgets/QWebView>

int main(int argc, char * argv[])
{
    QApplication app(argc, argv);

    QMainWindow *browser = new QMainWindow();

    browser->setFixedWidth(1366);
    browser->setFixedHeight(768);

    QWebView *view = new QWebView( browser);
    view->setFixedSize(browser->size());
    //view->load(QUrl("http://192.168.1.2:3600"));
    view->load(QUrl("http://www.webkit.org/blog-files/3d-transforms/morphing-cubes.html"));
    view->show();

    browser->show();

    return app.exec();

}

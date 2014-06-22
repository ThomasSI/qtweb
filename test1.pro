TEMPLATE = app

QT += qml quick widgets webengine webkit core gui network webkitwidgets

#SOURCES += main.cpp
SOURCES += main2.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

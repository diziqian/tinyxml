#-------------------------------------------------
#
# Project created by QtCreator 2020-04-08T16:50:16
#
#-------------------------------------------------

QT       -= core gui

TARGET = tinyxml
TEMPLATE = lib
CONFIG += staticlib

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    ../tinyxmlparser.cpp \
    ../tinyxmlerror.cpp \
    ../tinyxml.cpp \
    ../tinystr.cpp

HEADERS += \
    ../tinyxml.h \
    ../tinystr.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

CONFIG(debug, debug|release) {
    TARGET = tinyxmld
} else {
    TARGET = tinyxml
}

#Debug 禁止O2优化
QMAKE_CFLAGS_DEBUG -= -O2
QMAKE_CXXFLAGS_DEBUG -= -O2

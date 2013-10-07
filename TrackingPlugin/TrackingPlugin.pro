######################################################################
# Automatically generated by qmake (2.01a) Fri Aug 23 13:22:33 2013
######################################################################
CONFIG(debug, debug|release):    message(Debug build!)
CONFIG(release, debug|release):    message(Release build!)

QT -= gui

TARGET = trackingPlugin

CONFIG(debug, debug|release): TARGET = TrackingPlugin_Debug
CONFIG(release, debug|release): TARGET = TrackingPlugin_Release

TEMPLATE = lib
CONFIG += dll

DEFINES += TRACKINGPLUGIN_LIB

# Input
HEADERS += trackingplugin.h trackingplugin_global.h \
    package_bgs/StaticFrameDifferenceBGS.h \
    package_tracking/BlobTracking.h \
    package_bgs/IBGS.h \
    package_analysis/BlobCounting.h \
    package_tracking/cvblob/cvblob.h
SOURCES += trackingplugin.cpp \
    package_tracking/BlobTracking.cpp \
    package_bgs/StaticFrameDifferenceBGS.cpp \
    package_analysis/BlobCounting.cpp \
    package_tracking/cvblob/cvtrack.cpp \
    package_tracking/cvblob/cvlabel.cpp \
    package_tracking/cvblob/cvcontour.cpp \
    package_tracking/cvblob/cvcolor.cpp \
    package_tracking/cvblob/cvblob.cpp \
    package_tracking/cvblob/cvaux.cpp

CONFIG(debug, debug|release): DESTDIR = $$PWD/../../../NoobaVSS_build/NoobaFE/Debug/plugins/
CONFIG(release, debug|release): DESTDIR = $$PWD/../../../NoobaVSS_build/NoobaFE/Release/plugins/

# include opencv
unix {
    CONFIG += link_pkgconfig
    PKGCONFIG += opencv
}

CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../../NoobaVSS_build/NoobaPluginAPI/Debug/ -lNoobaPluginAPId
CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../../NoobaVSS_build/NoobaPluginAPI/Release/ -lNoobaPluginAPI

INCLUDEPATH += $$PWD/../../../NoobaVSS/NoobaPluginAPI/
DEPENDPATH += $$PWD/../../../NoobaVSS/NoobaPluginAPI/

#-------------------------------------------------
#
# Project created by QtCreator 2015-04-04T03:44:46
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = OpenCVFirstTest
TEMPLATE = app


SOURCES += main.cpp\
        opencv_firsttest.cpp

HEADERS  += opencv_firsttest.h

FORMS    += opencv_firsttest.ui

INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/include/opencv
INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/include/opencv2

INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/core/include

INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/imgproc/include
INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/imgcodecs/include

INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/photo/include

INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/video/include
INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/videoio/include

INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/objdetect/include

INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/highgui/include

INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/features2d/include
INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/calib3d/include
INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/ml/include

INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/flann/include

LIBS        += -LD:/Qt/opencv3/OpenCV_Git_Make/lib/Release -lopencv_core300 -lopencv_imgcodecs300 -lopencv_imgproc300 -lopencv_highgui300

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


win32 {

    OPENCV_INCLUDE_PATH        = D:/Qt/opencv3/OpenCV_Git/include
    OPENCV_INCLUDE_MODULE_PATH = D:/Qt/opencv3/OpenCV_Git/modules

    OPENCV_LIBS_PATH           = D:/Qt/opencv3/OpenCV_Git_Make
}

unix {

    OPENCV_INCLUDE_PATH        = ~/Libs/OpenCV/opencv-3.0.0-alpha/include
    OPENCV_INCLUDE_MODULE_PATH = ~/Libs/OpenCV/opencv-3.0.0-alpha/build/modules

    OPENCV_LIBS_PATH           = ~/Libs/OpenCV/opencv-3.0.0-alpha/build/lib
}

INCLUDEPATH += $$OPENCV_INCLUDE_PATH

INCLUDEPATH += $$OPENCV_INCLUDE_MODULE_PATH/core/include

INCLUDEPATH += $$OPENCV_INCLUDE_MODULE_PATH/imgproc/include
INCLUDEPATH += $$OPENCV_INCLUDE_MODULE_PATH/imgcodecs/include

INCLUDEPATH += $$OPENCV_INCLUDE_MODULE_PATH/photo/include

INCLUDEPATH += $$OPENCV_INCLUDE_MODULE_PATH/modules/video/include
INCLUDEPATH += $$OPENCV_INCLUDE_MODULE_PATH/modules/videoio/include

INCLUDEPATH += $$OPENCV_INCLUDE_MODULE_PATH/modules/objdetect/include

INCLUDEPATH += $$OPENCV_INCLUDE_MODULE_PATH/modules/highgui/include

INCLUDEPATH += $$OPENCV_INCLUDE_MODULE_PATH/modules/features2d/include
INCLUDEPATH += $$OPENCV_INCLUDE_MODULE_PATH/modules/calib3d/include
INCLUDEPATH += $$OPENCV_INCLUDE_MODULE_PATH/modules/ml/include

INCLUDEPATH += $$OPENCV_INCLUDE_MODULE_PATH/modules/flann/include

#INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/include/opencv
#INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/include/opencv2

#INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/core/include

#INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/imgproc/include
#INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/imgcodecs/include

#INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/photo/include

#INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/video/include
#INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/videoio/include

#INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/objdetect/include

#INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/highgui/include

#INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/features2d/include
#INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/calib3d/include
#INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/ml/include

#INCLUDEPATH += D:/Qt/opencv3/OpenCV_Git/modules/flann/include


win32:CONFIG ( release, debug ) {

    LIBS        += -L$$OPENCV_LIBS_PATH/Release -lopencv_core300 -lopencv_imgcodecs300 -lopencv_imgproc300 -lopencv_highgui300
}

message($$OPENCV_LIBS_PATH)

unix:CONFIG ( debug ) {

    LIBS    += -L$$OPENCV_LIBS_PATH
    LIBS    += -lopencv_core -lopencv_imgcodecs -lopencv_imgproc -lopencv_highgui

}

message($$OPENCV_LIBS_PATH)

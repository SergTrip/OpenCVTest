#ifndef OPENCV_FIRSTTEST_H
#define OPENCV_FIRSTTEST_H

#include <QMainWindow>

#include <opencv2/opencv.hpp>

#include <opencv/cv.h>
#include <opencv/highgui.h>

namespace Ui {
class OpenCV_FirstTest;
}

class OpenCV_FirstTest : public QMainWindow
{
    Q_OBJECT
    // Добавленная хуйня !!!

public:
    explicit OpenCV_FirstTest(QWidget *parent = 0);
    ~OpenCV_FirstTest();

//private:
    // Тестовая функция
    void hello_word();

private:
    Ui::OpenCV_FirstTest *ui;
};

#endif // OPENCV_FIRSTTEST_H

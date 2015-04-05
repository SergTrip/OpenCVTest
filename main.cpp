#include "opencv_firsttest.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    OpenCV_FirstTest w;
    w.show();

    return a.exec();
}

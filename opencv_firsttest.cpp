#include "opencv_firsttest.h"
#include "ui_opencv_firsttest.h"

OpenCV_FirstTest::OpenCV_FirstTest(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::OpenCV_FirstTest)
{
    ui->setupUi(this);

    // Тестируем библиотеку
    hello_word();
}

OpenCV_FirstTest::~OpenCV_FirstTest()
{
    delete ui;
}

void OpenCV_FirstTest::hello_word()
{
    // задаём высоту и ширину картинки
    int height  = 620;
    int width   = 440;

    // задаём точку для вывода текста
    CvPoint pt = cvPoint( height/4, width/2 );

    // Создаёи 8-битную, 3-канальную картинку
    IplImage* hw = cvCreateImage(cvSize(height, width), 8, 3);

    // заливаем картинку чёрным цветом
    cvSet(hw,cvScalar(0,0,0));

    // инициализация шрифта
    CvFont font;
    cvInitFont( &font, CV_FONT_HERSHEY_COMPLEX,1.0, 1.0, 0, 1, CV_AA);

    // используя шрифт выводим на картинку текст
    cvPutText(hw, "OpenCV Step By Step", pt, &font, CV_RGB(150, 0, 150) );

    // создаём окошко
    cvNamedWindow("Hello World", 0);
    // показываем картинку в созданном окне
    cvShowImage("Hello World", hw);
    // ждём нажатия клавиши
    cvWaitKey(0);

    // освобождаем ресурсы
    cvReleaseImage(&hw);
    cvDestroyWindow("Hello World");

}

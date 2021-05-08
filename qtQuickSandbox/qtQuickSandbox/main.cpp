#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QObject>
#include <QString>
#include <qqml.h> 
#include <QQmlEngine>
#include "coffee.h"

int main(int argc, char *argv[])
{
    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
   
    QQuickView view1(QUrl::fromLocalFile("../qtQuickSandbox/CoffeeTypeDialog.qml"));
    QQuickView view2(QUrl::fromLocalFile("../qtQuickSandbox/FoamAmountDialog.qml"));
    QQuickView view3(QUrl::fromLocalFile("../qtQuickSandbox/EspressoShotsDialog.qml"));
    QQuickView view4(QUrl::fromLocalFile("../qtQuickSandbox/HotOrIcedDialog.qml"));    
    QQuickView view5(QUrl::fromLocalFile("../qtQuickSandbox/BlendsDialog.qml")); 
    QQuickView view6(QUrl::fromLocalFile("../qtQuickSandbox/CoffeeSizeDialog.qml"));
    
    QObject* coffeeType_p = NULL;
    QObject* foamAmount_p = view2.rootObject();
    QObject* espressoShots_p = view3.rootObject();
    QObject* hotOrIced_p = view4.rootObject();
    QObject* blends_p = view5.rootObject();
    QObject* coffeeSize_p = view6.rootObject();
        
    coffeeType_p = view1.rootObject();
    assert(coffeeType_p != NULL);

    Coffee myCoffeeOrder;
    QObject::connect(coffeeType_p, SIGNAL(coffeeTypeSignal(QString)), &myCoffeeOrder, SLOT(coffeeTypeSlot(QString)));
    QObject::connect(foamAmount_p, SIGNAL(foamAmountSignal(QString)), &myCoffeeOrder, SLOT(foamAmountSlot(QString))); 
    QObject::connect(espressoShots_p, SIGNAL(espressoShotsSignal(QString)), &myCoffeeOrder, SLOT(espressoShotsSlot(QString)));
    QObject::connect(hotOrIced_p, SIGNAL(hotOrIcedSignal(QString)), &myCoffeeOrder, SLOT(hotOrIcedSlot(QString)));
    QObject::connect(blends_p, SIGNAL(blendsSignal(QString)), &myCoffeeOrder, SLOT(blendsSlot(QString)));
    QObject::connect(coffeeSize_p, SIGNAL(coffeeSizeSignal(QString)), &myCoffeeOrder, SLOT(coffeeSizeSlot(QString)));
    
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}

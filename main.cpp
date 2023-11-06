#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "firepanel.h"
#include "appsetting.h"
#include "tacticsetting.h"
#include "signalcontrol.h"
#include "mapsetting.h"
#include "screensetting.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    FirePanel firePanel1, firePanel2, firePanel3, firePanel4, firePanel5, firePanel6, firePanel7, firePanel8, firePanel9, firePanel10;
    FirePanel firePanel11, firePanel12, firePanel13, firePanel14, firePanel15, firePanel16, firePanel17, firePanel18, firePanel19, firePanel20;
    AppSetting appsetting;
    TacticSetting tacticsetting;
    SignalControl signalcontrol;
    MapSetting mapsetting;
    ScreenSetting screensetting;
    //    qmlRegisterType<FirePanel> ("Thao", 1, 0, "FirePanel");

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);

    QQmlContext * rootContext = engine.rootContext();
    rootContext->setContextProperty("panel_1", &firePanel1);
    rootContext->setContextProperty("panel_2", &firePanel2);
    rootContext->setContextProperty("panel_3", &firePanel3);
    rootContext->setContextProperty("panel_4", &firePanel4);
    rootContext->setContextProperty("panel_5", &firePanel5);
    rootContext->setContextProperty("panel_6", &firePanel6);
    rootContext->setContextProperty("panel_7", &firePanel7);
    rootContext->setContextProperty("panel_8", &firePanel8);
    rootContext->setContextProperty("panel_9", &firePanel9);
    rootContext->setContextProperty("panel_10", &firePanel10);
    rootContext->setContextProperty("panel_11", &firePanel11);
    rootContext->setContextProperty("panel_12", &firePanel12);
    rootContext->setContextProperty("panel_13", &firePanel13);
    rootContext->setContextProperty("panel_14", &firePanel14);
    rootContext->setContextProperty("panel_15", &firePanel15);
    rootContext->setContextProperty("panel_16", &firePanel16);
    rootContext->setContextProperty("panel_17", &firePanel17);
    rootContext->setContextProperty("panel_18", &firePanel18);
    rootContext->setContextProperty("panel_19", &firePanel19);
    rootContext->setContextProperty("panel_20", &firePanel20);
    rootContext->setContextProperty("app_parameter", &appsetting);
    rootContext->setContextProperty("tactic", &tacticsetting);
    rootContext->setContextProperty("signal_param", &signalcontrol);
    rootContext->setContextProperty("map_param", &mapsetting);
    rootContext->setContextProperty("screen_param", &screensetting);

    return app.exec();
}

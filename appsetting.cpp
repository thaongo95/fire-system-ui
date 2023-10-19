#include "appsetting.h"

AppSetting::AppSetting(QObject *parent)
    : QObject{parent}
    , m_colorAppDanPhong{"#708090"}
{

}


QString AppSetting::colorAppDanPhong() const
{
    return m_colorAppDanPhong;
}

void AppSetting::setColorAppDanPhong(const QString &newColorAppDanPhong)
{
    if (m_colorAppDanPhong == newColorAppDanPhong)
        return;
    m_colorAppDanPhong = newColorAppDanPhong;
    emit colorAppDanPhongChanged();
}

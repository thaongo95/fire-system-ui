#include "appsetting.h"

AppSetting::AppSetting(QObject *parent)
    : QObject{parent}
    , m_colorAppDanPhong{"#708090"}
    , m_textPixelSize{14}
    , m_lockFlag{"locked"}
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

int AppSetting::textPixelSize() const
{
    return m_textPixelSize;
}

void AppSetting::setTextPixelSize(int newTextPixelSize)
{
    if (m_textPixelSize == newTextPixelSize)
        return;
    m_textPixelSize = newTextPixelSize;
    emit textPixelSizeChanged();
}

QString AppSetting::lockFlag() const
{
    return m_lockFlag;
}

void AppSetting::setlockFlag(const QString &newLockFlag)
{
    if (m_lockFlag == newLockFlag)
        return;
    m_lockFlag = newLockFlag;
    emit lockFlagChanged();
}

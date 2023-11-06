#include "screensetting.h"

ScreenSetting::ScreenSetting(QObject *parent)
    : QObject{parent}
    , m_screenFlag{true}
{

}

bool ScreenSetting::screenFlag() const
{
    return m_screenFlag;
}

void ScreenSetting::setScreenFlag(bool newScreenFlag)
{
    if (m_screenFlag == newScreenFlag)
        return;
    m_screenFlag = newScreenFlag;
    emit screenFlagChanged();
}

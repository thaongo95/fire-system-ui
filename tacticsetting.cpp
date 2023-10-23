#include "tacticsetting.h"

TacticSetting::TacticSetting(QObject *parent)
    : QObject{parent}
    , m_tacticType {"oneshot"}
    , m_fireType {"A"}
    , m_numberOfFire{1}
    , m_timeBetweenTwoShot{1000}
    , m_lockFireButton{true}
    , m_panelChose{1}
{

}

QString TacticSetting::tacticType() const
{
    return m_tacticType;
}

void TacticSetting::setTacticType(const QString &newTacticType)
{
    if (m_tacticType == newTacticType)
        return;
    m_tacticType = newTacticType;
    emit tacticTypeChanged();
}

QString TacticSetting::fireType() const
{
    return m_fireType;
}

void TacticSetting::setFireType(const QString &newFireType)
{
    if (m_fireType == newFireType)
        return;
    m_fireType = newFireType;
    emit fireTypeChanged();
}

int TacticSetting::numberOfFire() const
{
    return m_numberOfFire;
}

void TacticSetting::setNumberOfFire(int newNumberOfFire)
{
    if (m_numberOfFire == newNumberOfFire)
        return;
    m_numberOfFire = newNumberOfFire;
    emit numberOfFireChanged();
}

int TacticSetting::timeBetweenTwoShot() const
{
    return m_timeBetweenTwoShot;
}

void TacticSetting::setTimeBetweenTwoShot(int newTimeBetweenTwoShot)
{
    if (m_timeBetweenTwoShot == newTimeBetweenTwoShot)
        return;
    m_timeBetweenTwoShot = newTimeBetweenTwoShot;
    emit timeBetweenTwoShotChanged();
}

bool TacticSetting::lockFireButton() const
{
    return m_lockFireButton;
}

void TacticSetting::setLockFireButton(bool newLockFireButton)
{
    if (m_lockFireButton == newLockFireButton)
        return;
    m_lockFireButton = newLockFireButton;
    emit lockFireButtonChanged();
}

int TacticSetting::panelChose() const
{
    return m_panelChose;
}

void TacticSetting::setPanelChose(int newPanelChose)
{
    if (m_panelChose == newPanelChose)
        return;
    m_panelChose = newPanelChose;
    emit panelChoseChanged();
}

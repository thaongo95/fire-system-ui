#include "signalcontrol.h"

SignalControl::SignalControl(QObject *parent)
    : QObject{parent}
    , m_target_X{100.0}
    , m_target_Y{100.0}
    , m_move_Step{10.0}
    , m_moveSpeed_X{50}
    , m_moveSpeed_Y{50}
    , m_controlMode{"tank"}
{

}

qreal SignalControl::target_X() const
{
    return m_target_X;
}

void SignalControl::setTarget_X(qreal newTarget_X)
{
    if (m_target_X == newTarget_X)
        return;
    m_target_X = newTarget_X;
    emit target_XChanged();
}

qreal SignalControl::target_Y() const
{
    return m_target_Y;
}

void SignalControl::setTarget_Y(qreal newTarget_Y)
{
    if (m_target_Y == newTarget_Y)
        return;
    m_target_Y = newTarget_Y;
    emit target_YChanged();
}

qreal SignalControl::move_Step() const
{
    return m_move_Step;
}

void SignalControl::setMove_Step(qreal newMove_Step)
{
    if (qFuzzyCompare(m_move_Step, newMove_Step))
        return;
    m_move_Step = newMove_Step;
    emit move_StepChanged();
}

void SignalControl::moveLeft()
{
    m_target_X = m_target_X - m_move_Step;
    emit target_XChanged();
}

void SignalControl::moveRight()
{
    m_target_X += m_move_Step;
    emit target_XChanged();
}

void SignalControl::moveUp()
{
    m_target_Y -= m_move_Step;
    emit target_YChanged();
}

void SignalControl::moveDown()
{
    m_target_Y += m_move_Step;
    emit target_YChanged();
}

void SignalControl::moveToPoint(qreal new_X, qreal new_Y)
{
    m_target_X = new_X;
    m_target_Y = new_Y;
}

int SignalControl::moveSpeed_X() const
{
    return m_moveSpeed_X;
}

void SignalControl::setMoveSpeed_X(int newMoveSpeed_X)
{
    if (m_moveSpeed_X == newMoveSpeed_X)
        return;
    m_moveSpeed_X = newMoveSpeed_X;
    emit moveSpeed_XChanged();
}

int SignalControl::moveSpeed_Y() const
{
    return m_moveSpeed_Y;
}

void SignalControl::setMoveSpeed_Y(int newMoveSpeed_Y)
{
    if (m_moveSpeed_Y == newMoveSpeed_Y)
        return;
    m_moveSpeed_Y = newMoveSpeed_Y;
    emit moveSpeed_YChanged();
}

QString SignalControl::controlMode() const
{
    return m_controlMode;
}

void SignalControl::setControlMode(const QString &newControlMode)
{
    if (m_controlMode == newControlMode)
        return;
    m_controlMode = newControlMode;
    emit controlModeChanged();
}

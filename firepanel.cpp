#include "firepanel.h"
#include <QDebug>

FirePanel::FirePanel(QObject *parent)
    : QObject{parent}
    , m_panelstatue{"Waiting"}
{

}

void FirePanel::callMe()
{
    qDebug() << "Iam being called";
}

QString FirePanel::panelStatue(){
    return m_panelstatue;
}

void FirePanel::setPanelStatue(QString newStatue){
    if (m_panelstatue != newStatue)
    {
        m_panelstatue = newStatue;
        emit panelStatueChanged();
    }
}

QString FirePanel::getPanelStatue()
{
    return m_panelstatue;
}

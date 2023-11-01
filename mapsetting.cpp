#include "mapsetting.h"

MapSetting::MapSetting(QObject *parent)
    : QObject{parent}
    , m_cord_X{21.69891}
    , m_cord_Y{105.24492}
{

}

qreal MapSetting::cord_X() const
{
    return m_cord_X;
}

void MapSetting::setCord_X(const qreal &newCord_X)
{
    if (m_cord_X == newCord_X)
        return;
    m_cord_X = newCord_X;
    emit cord_XChanged();
}

qreal MapSetting::cord_Y() const
{
    return m_cord_Y;
}

void MapSetting::setCord_Y(qreal newCord_Y)
{
    if (qFuzzyCompare(m_cord_Y, newCord_Y))
        return;
    m_cord_Y = newCord_Y;
    emit cord_YChanged();
}

#ifndef MAPSETTING_H
#define MAPSETTING_H

#include <QObject>

class MapSetting : public QObject
{
    Q_OBJECT
    Q_PROPERTY(qreal cord_X READ cord_X WRITE setCord_X NOTIFY cord_XChanged FINAL)
    Q_PROPERTY(qreal cord_Y READ cord_Y WRITE setCord_Y NOTIFY cord_YChanged FINAL)
public:
    explicit MapSetting(QObject *parent = nullptr);

    qreal cord_X() const;
    qreal cord_Y() const;


signals:

    void cord_XChanged();
    void cord_YChanged();
public slots:
    void setCord_X(const qreal &newCord_X);
    void setCord_Y(qreal newCord_Y);


private:
    qreal m_cord_X;
    qreal m_cord_Y;
};

#endif // MAPSETTING_H

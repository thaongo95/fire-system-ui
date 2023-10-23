#ifndef APPSETTING_H
#define APPSETTING_H

#include <QObject>


class AppSetting : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString colorAppDanPhong READ colorAppDanPhong WRITE setColorAppDanPhong NOTIFY colorAppDanPhongChanged FINAL)
    Q_PROPERTY(int textPixelSize READ textPixelSize WRITE setTextPixelSize NOTIFY textPixelSizeChanged FINAL)
    Q_PROPERTY(QString lockFlag READ lockFlag WRITE setlockFlag NOTIFY lockFlagChanged FINAL)
public:
    explicit AppSetting(QObject *parent = nullptr);

    QString colorAppDanPhong() const;
    int textPixelSize() const;
    QString lockFlag() const;


signals:
    void colorAppDanPhongChanged();
    void textPixelSizeChanged();
    void lockFlagChanged();

public slots:
    void setColorAppDanPhong(const QString &newColorAppDanPhong);
    void setTextPixelSize(int newTextPixelSize);
    void setlockFlag(const QString &newLockFlag);
private:

    QString m_colorAppDanPhong;
    int m_textPixelSize;
    QString m_lockFlag;
};

#endif // APPSETTING_H

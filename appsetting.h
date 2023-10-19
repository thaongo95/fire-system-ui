#ifndef APPSETTING_H
#define APPSETTING_H

#include <QObject>


class AppSetting : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString colorAppDanPhong READ colorAppDanPhong WRITE setColorAppDanPhong NOTIFY colorAppDanPhongChanged FINAL)
public:
    explicit AppSetting(QObject *parent = nullptr);

    QString colorAppDanPhong() const;


signals:
    void colorAppDanPhongChanged();

public slots:
    void setColorAppDanPhong(const QString &newColorAppDanPhong);
private:

    QString m_colorAppDanPhong;
};

#endif // APPSETTING_H

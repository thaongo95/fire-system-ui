#ifndef SCREENSETTING_H
#define SCREENSETTING_H

#include <QObject>

class ScreenSetting : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool screenFlag READ screenFlag WRITE setScreenFlag NOTIFY screenFlagChanged FINAL)

public:
    explicit ScreenSetting(QObject *parent = nullptr);

    bool screenFlag() const;


signals:

    void screenFlagChanged();


public slots:
    void setScreenFlag(bool newScreenFlag);

private:

    bool m_screenFlag;
};

#endif // SCREENSETTING_H

#ifndef FIREPANEL_H
#define FIREPANEL_H

#include <QObject>

class FirePanel : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString panelStatue READ panelStatue WRITE setPanelStatue NOTIFY panelStatueChanged FINAL)
    // panelStatue include {Waiting; Ready; Fired}
public:
    explicit FirePanel(QObject *parent = nullptr);
    QString panelStatue();

signals:
    void panelStatueChanged();

public slots:
    void setPanelStatue( QString);
    QString getPanelStatue();
    void callMe();
private:
    QString m_panelstatue;
};



#endif // FIREPANEL_H

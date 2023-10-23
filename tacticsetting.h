#ifndef TACTICSETTING_H
#define TACTICSETTING_H

#include <QObject>

class TacticSetting : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString tacticType READ tacticType WRITE setTacticType NOTIFY tacticTypeChanged FINAL)
    // tacticType include {ban don; ban lien thanh}
    Q_PROPERTY(QString fireType READ fireType WRITE setFireType NOTIFY fireTypeChanged FINAL)
    // fireType include {ban trai sang tren xuong; ban phai sang tren xuong; ban trai sang duoi len, ban phai sang duoi len, ban chi dinh}
    Q_PROPERTY(int numberOfFire READ numberOfFire WRITE setNumberOfFire NOTIFY numberOfFireChanged FINAL)
    // numbers of fire in one multishot
    Q_PROPERTY(int timeBetweenTwoShot READ timeBetweenTwoShot WRITE setTimeBetweenTwoShot NOTIFY timeBetweenTwoShotChanged FINAL)
    // delay time between two times of fire in multishot mode
    Q_PROPERTY(bool lockFireButton READ lockFireButton WRITE setLockFireButton NOTIFY lockFireButtonChanged FINAL)
    // lock status of fire mode
    Q_PROPERTY(int panelChose READ panelChose WRITE setPanelChose NOTIFY panelChoseChanged FINAL)
    // the panel is chose to fire in "chi dinh mode" of oneshot mode
public:
    explicit TacticSetting(QObject *parent = nullptr);

    QString tacticType() const;
    QString fireType() const;
    int numberOfFire() const;
    int timeBetweenTwoShot() const;
    bool lockFireButton() const;
    int panelChose() const;


signals:
    void tacticTypeChanged();
    void fireTypeChanged();
    void numberOfFireChanged();
    void timeBetweenTwoShotChanged();
    void lockFireButtonChanged();

    void panelChoseChanged();

public slots:
    void setTacticType(const QString &newTacticType);
    void setFireType(const QString &newFireType);
    void setNumberOfFire(int newNumberOfFire);
    void setTimeBetweenTwoShot(int newTimeBetweenTwoShot);
    void setLockFireButton(bool newLockFireButton);
    void setPanelChose(int newPanelChose);

private:

    QString m_tacticType;
    QString m_fireType;
    int m_numberOfFire;
    int m_timeBetweenTwoShot;
    bool m_lockFireButton;
    int m_panelChose;
};

#endif // TACTICSETTING_H

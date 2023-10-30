#ifndef SIGNALCONTROL_H
#define SIGNALCONTROL_H

#include <QObject>

class SignalControl : public QObject
{
    Q_OBJECT
    Q_PROPERTY(qreal target_X READ target_X WRITE setTarget_X NOTIFY target_XChanged FINAL)
    Q_PROPERTY(qreal target_Y READ target_Y WRITE setTarget_Y NOTIFY target_YChanged FINAL)
    Q_PROPERTY(qreal move_Step READ move_Step WRITE setMove_Step NOTIFY move_StepChanged FINAL)
    Q_PROPERTY(int moveSpeed_X READ moveSpeed_X WRITE setMoveSpeed_X NOTIFY moveSpeed_XChanged FINAL)
    Q_PROPERTY(int moveSpeed_Y READ moveSpeed_Y WRITE setMoveSpeed_Y NOTIFY moveSpeed_YChanged FINAL)
    Q_PROPERTY(QString controlMode READ controlMode WRITE setControlMode NOTIFY controlModeChanged FINAL)
public:
    explicit SignalControl(QObject *parent = nullptr);

    qreal target_X() const;
    qreal target_Y() const;


    qreal move_Step() const;

    int moveSpeed_X() const;
    int moveSpeed_Y() const;


    QString controlMode() const;


public slots:
    void setTarget_X(qreal newTarget_X);
    void setTarget_Y(qreal newTarget_Y);
    void setMove_Step(qreal newMove_Step);
    void moveToPoint(qreal new_X, qreal new_Y);
    void moveLeft();
    void moveRight();
    void moveUp();
    void moveDown();
    void setMoveSpeed_X(int newMoveSpeed_X);
    void setMoveSpeed_Y(int newMoveSpeed_Y);
    void setControlMode(const QString &newControlMode);

signals:

    void target_XChanged();
    void target_YChanged();

    void move_StepChanged();

    void moveSpeed_XChanged();

    void moveSpeed_YChanged();

    void controlModeChanged();

private:

    qreal m_target_X;
    qreal m_target_Y;
    qreal m_move_Step;
    int m_moveSpeed_X;
    int m_moveSpeed_Y;
    QString m_controlMode;
};

#endif // SIGNALCONTROL_H

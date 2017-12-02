#pragma once

#include <QObject>

class Circle : public QObject
{
    Q_OBJECT
    Q_PROPERTY(double x READ getRandomX NOTIFY xPosition())
    Q_PROPERTY(double y READ getRandomY NOTIFY yPosition())

public:
    explicit Circle(QObject *parent = nullptr);
    double getRandomX();
    double getRandomY();
signals:
    void xPosition();
    void yPosition();
public slots:
    void slotPositionX();
    void slotPositionY();

private:
    double x = 0;
    double y = 0;
};


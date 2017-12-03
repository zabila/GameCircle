#pragma once

#include <QObject>

class Circle : public QObject
{
    Q_OBJECT
    Q_PROPERTY(double x READ getRandomX NOTIFY xPosition())
    Q_PROPERTY(double y READ getRandomY NOTIFY yPosition())
    Q_PROPERTY(int level READ getLevel WRITE setLevel NOTIFY levelChanged)

public:
    explicit Circle(QObject *parent = nullptr);

    double getRandomX();
    double getRandomY();
    int getLevel();

    void setLevel(int);

signals:
    void xPosition();
    void yPosition();
    void levelChanged();

public slots:
    void slotPositionX();
    void slotPositionY();

private:
    double x = 0;
    double y = 0;
    int level;
};


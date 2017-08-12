#ifndef CIRCLE_H
#define CIRCLE_H

#include <QObject>

class Circle : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int x READ getRandomX NOTIFY xPosition())
    Q_PROPERTY(int y READ getRandomY NOTIFY yPosition())

public:
    explicit Circle(QObject *parent = nullptr);
    int getRandomX();
    int getRandomY();
signals:
    void xPosition();
    void yPosition();
public slots:
    slotPositionX();
    slotPositionY();

private:
    int x;
    int y;
};





#endif // CIRCLE_H

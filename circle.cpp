#include "circle.h"

Circle::Circle(QObject *parent) : QObject(parent)
{

}

double Circle::getRandomY()
{
    y = rand() % 1160;
    return y;
}

int Circle::getLevel()
{
    return level;
}

void Circle::setLevel(int _level)
{
    level = _level;
}


double Circle::getRandomX()
{
      x = rand() % 660;
     return x;
}

void Circle::slotPositionX()
{
    emit getRandomX();
}

void Circle::slotPositionY()
{
  emit getRandomY();
}

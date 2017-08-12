#include "circle.h"

Circle::Circle(QObject *parent) : QObject(parent)
  ,x(0)
  ,y(0)
{

}

const int Circle::getRandomY()
{
    y = rand() % 540;
    return y;
}

const int Circle::getRandomX()
{
      x = rand() % 540;
     return x;
}

Circle::slotPositionX()
{
    emit getRandomX();
}

Circle::slotPositionY()
{
  emit getRandomY();
}

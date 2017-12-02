#include "circle.h"

Circle::Circle(QObject *parent) : QObject(parent)
{

}

double Circle::getRandomY()
{
    y = rand() % 540;
    return y;
}

double Circle::getRandomX()
{
      x = rand() % 540;
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

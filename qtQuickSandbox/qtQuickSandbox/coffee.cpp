#include <string>                                                               
#include <iostream>                                                             
#include <cassert>                                                              
#include <QObject>                                                              
#include <QQuickItem>    
#include <QString>
#include "coffee.h"



Coffee::Coffee(QObject *parent):QObject(parent)
{

}

Coffee::~Coffee()
{

}

void Coffee::coffeeTypeSlot(const QString &msg)
{
    m_coffeeType = msg;
    emit coffeeTypeBackendSignal(msg);
}

void Coffee::setCoffeeType(QString set)
{
    m_coffeeType = set;
}

QString Coffee::getCoffeeType()
{
    return(m_coffeeType);
}

void Coffee::foamAmountSlot(const QString &msg)
{
    m_foam = msg;
    emit foamAmountBackendSignal(msg);
}

QString Coffee::getFoamAmount()
{
    return(m_foam);
}

void Coffee::setFoamAmount(QString set)
{
    m_foam = set;
}

void Coffee::espressoShotsSlot(const QString &msg)
{
    m_shotsOfExpresso = msg;
    emit espressoShotsBackendSignal(msg);
}

QString Coffee::getEspressoShots()
{
    return(m_shotsOfExpresso);
}

void Coffee::setEspressoShots(QString set)
{
    m_shotsOfExpresso = set;
}

void Coffee::hotOrIcedSlot(const QString &msg)
{
    m_tempature = msg;
    emit hotOrIcedBackendSignal(msg);
}

QString Coffee::getHotOrIced()
{
    return(m_tempature);
}

void Coffee::setHotOrIced(QString set)
{
    m_tempature = set;
}

void Coffee::blendsSlot(const QString &msg)
{
    m_blend = msg;
    emit blendsBackendSignal(msg);
}

QString Coffee::getBlends()
{
    return(m_blend);
}

void Coffee::setBlends(QString set)
{
    m_blend = set;
}

void Coffee::coffeeSizeSlot(const QString &msg)
{
    m_size = msg;
    emit blendsBackendSignal(msg);
}

QString Coffee::getCoffeeSize()
{
    return(m_size);
}

void Coffee::setCoffeeSize(QString set)
{
    m_size = set;
}

#ifndef COFFEE_H
#define COFFEE_H

#include <string>
#include <iostream>
#include <cassert>
#include <QObject>
#include <QQuickItem>
#include <QString>
#include <qqml.h>
#include <QQmlEngine>


class Coffee: public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString coffeeType READ getCoffeeType WRITE setCoffeeType NOTIFY coffeeTypeBackendSignal)
    Q_PROPERTY(QString foamAmount READ getFoamAmount WRITE setFoamAmount NOTIFY foamAmountBackendSignal)
    Q_PROPERTY(QString espressoShots READ getEspressoShots WRITE setEspressoShots NOTIFY espressoShotsBackendSignal)
    Q_PROPERTY(QString hotOrIced READ getHotOrIced WRITE setHotOrIced NOTIFY hotOrIcedBackendSignal)
    Q_PROPERTY(QString blends READ getBlends WRITE setBlends NOTIFY blendsBackendSignal)
    Q_PROPERTY(QString coffeeSize READ getCoffeeSize WRITE setCoffeeSize NOTIFY coffeeSizeSignal)
    QML_ELEMENT
    
    public:
        explicit Coffee(QObject *parent = nullptr);
        ~Coffee();

        Q_INVOKABLE QString getCoffeeType();
        Q_INVOKABLE void setCoffeeType(QString set); 

        Q_INVOKABLE QString getFoamAmount();
        Q_INVOKABLE void setFoamAmount(QString set);
       
        Q_INVOKABLE QString getEspressoShots();
        Q_INVOKABLE void setEspressoShots(QString set);
        
        Q_INVOKABLE QString getHotOrIced();
        Q_INVOKABLE void setHotOrIced(QString set);

        Q_INVOKABLE QString getBlends();
        Q_INVOKABLE void setBlends(QString set);

        Q_INVOKABLE QString getCoffeeSize();
        Q_INVOKABLE void setCoffeeSize(QString set);
        

    public slots:
        void coffeeTypeSlot(const QString &msg);
        void foamAmountSlot(const QString &msg);
        void espressoShotsSlot(const QString &msg);
        void hotOrIcedSlot(const QString &msg);
        void blendsSlot(const QString &msg);
        void coffeeSizeSlot(const QString &msg);

    signals:
        void coffeeTypeBackendSignal(const QString &msg);
        void foamAmountBackendSignal(const QString &msg);
        void espressoShotsBackendSignal(const QString &msg);
        void hotOrIcedBackendSignal(const QString &msg);
        void blendsBackendSignal(const QString &msg);
        void coffeeSizeSignal(const QString &msg);

    private:
    
        QString m_coffeeType = "latte";
        QString m_size = "medium";
        QString m_foam = "normal";
        QString m_shotsOfExpresso = "2";
        QString m_tempature = "hot";
        QString m_blend = "dark";  
        
};

#endif //COFFEE_H

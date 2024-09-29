#include "nestedclass.h"

NestedClass::NestedClass(QObject *parent) : QObject(parent)
{

}

int NestedClass::property()
{
    return m_iProperty;
}

void NestedClass::setProperty(int ipr)
{
    if(m_iProperty != ipr){
        m_iProperty = ipr;
        emit propertyChanged();
    }
}


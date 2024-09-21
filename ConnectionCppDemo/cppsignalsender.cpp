#include "cppsignalsender.h"

CppSignalSender::CppSignalSender(QWidget *parent) : QWidget(parent)
{

}

void CppSignalSender::cppSlot()
{
    emit callQml("Information from C++");

}
